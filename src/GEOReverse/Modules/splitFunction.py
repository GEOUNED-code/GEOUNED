import FreeCAD, Part
import BOPTools.SplitAPI
from GEOReverse.Modules.Utils.booleanFunction import outterTerms
import math


class splitBase:
    def __init__(self,base,knownSurf={}):
        self.base = base
        self.knownSurf = knownSurf
    
def joinBase(baseList):
    shape = []
    surf = {}
    removedKeys = []
    for b in baseList:
       if b.base is not None: shape.append(b.base)
       for k,v in b.knownSurf.items():
           if k in removedKeys : continue
           if k not in surf.keys():
               surf[k] = v
           else:
               if surf[k] == v : 
                  continue
               else:
                  surf[k] = None
                  removedKeys.append(k)

    newbase = FuseSolid(shape)
    return splitBase(newbase,surf)  
     

       

def SplitSolid(base,surfacesCut,cellObj,solidTool=False,tolerance=0.01): #1e-2
    # split Base (shape Object or list/tuple of shapes)
    # with selected surfaces (list of surfaces objects) cutting the base(s) (surfacesCut)
    # cellObj is the CAD object of the working cell to reconstruction.
    # the function return a list of solids enclosed fully in the cell (fullPart)
    # and a list of solids not fully enclosed in the cell (cutPart). These lasts
    # will require more splitting with the others surfaces defining the cell.
   
    fullPart = []
    cutPart  = []

    # part if several base in input
    if type(base) is list or type(base) is tuple :
       for b in base :
          fullList,cutList = SplitSolid(b,surfacesCut,cellObj,tolerance=tolerance)
          fullPart.extend(fullList)
          cutPart.extend(cutList)
       return fullPart,cutPart

     
    # part if base is shape object
    
    if solidTool: 
      Tools = (cellObj.shape,)
    else:
      Tools = tuple( s.shape for s in surfacesCut )
    #for s in surfacesCut:
    #    print(s.type,s.params,s.id)
    #    s.shape.exportStep('tool{}.stp'.format(s.id))
    #base.base.exportStep('base.stp')    
    Solids = BOPTools.SplitAPI.slice(base.base,Tools, 'Split',tolerance = tolerance).Solids
    if not Solids : Solids = [base.base]
    partPositions, partSolids  = space_decomposition(Solids,surfacesCut)

    ii = 0
    for pos,sol in zip(partPositions,partSolids):
        #fullPos = updateSurfacesValues(pos,cellObj.surfaces,base.knownSurf)
        #inSolid = cellObj.definition.evaluate(fullPos)


        if not solidTool : pos.update(base.knownSurf)
        inSolid = cellObj.definition.evaluate(pos)

        #if solidTool :
        #  ii += 1
        #  print(solidTool)
        #  print(cellObj.definition)
        #  print(pos)
        #  print('eval',inSolid)
        #  name = str(cellObj.definition)
        #  sol.exportStep('solid_{}{}.stp'.format(name,ii))
        
        if inSolid :
           fullPart.append(splitBase(sol,pos))
        elif inSolid is None :
           cutPart.append(splitBase(sol,pos))
    return fullPart,cutPart


def updateSurfacesValues (position,surfaces,knownSurf) :
    position.update(knownSurf) 
    sname = set(surfaces.keys())
    pname = set(position.keys())

    fullpos = position.copy()
    for name in sname.difference(pname) :
        fullpos[name] = None
    return fullpos    

# Get the position of subregion with respect
# all cutting surfaces    
def space_decomposition(solids,surfaces):

      component = []
      good_solids = []
      for c in solids:
         if c.Volume < 1e-3 :
            if abs(c.Volume) < 1e-3 :
               continue
            else:
                c.reverse()
                print('Negative solid Volume',c.Volume)
         Svalues = {}
         point = point_inside(c)
         if point == None : 
            continue  # point not found in solid (solid is surface or very thin can be source of lost particules in MCNP)
         for surf in surfaces :
             Svalues[surf.id] = surface_side(point,surf)   
            
         component.append(Svalues)
         good_solids.append(c)
      return component,good_solids

# find one point inside a solid (region)
def point_inside(solid):

      cut_line = 32
      cut_box  = 4
   
      # no poner boundbox, el punto puente caer en una superficie para geometria triangular
      point = solid.CenterOfMass
      points = point
      if solid.isInside(point,0.0,False) : return point

      v1=solid.Vertexes[0].Point
      for vi in range(len(solid.Vertexes)-1,0,-1):
        v2=solid.Vertexes[vi].Point
        dv= (v2-v1)*0.5
      
        n=1
        while True:
           for i in range(n): 
              point = v1 + dv *(1 + 0.5*i)
              if solid.isInside(point,0.0,False) : return point
           n=n*2
           dv=dv*0.5
           if (n > cut_line ) :
             break  

#      Box_Volume = BBox.XLength*BBox.YLength*BBox.ZLength
#      if (solid.Volume < Box_Volume/ math.pow(16,nmax_cut)) :
#           print('very small Solid Volume (solid volume, box volume): {},{}'.format(solid.Volume,Box_Volume))
#           return None        
      BBox = solid.optimalBoundingBox(False)
      box = [BBox.XMin,BBox.XMax,
             BBox.YMin,BBox.YMax,
             BBox.ZMin,BBox.ZMax ]
      
      boxes,centers = CutBox(box)
      n = 0

      while True :
         for p in centers :
            pp = FreeCAD.Vector(p[0],p[1],p[2])
            if solid.isInside(pp,0.0,False) : return pp

         subbox = []
         centers = []
         for b in boxes :
            btab,ctab = CutBox(b)   
            subbox.extend(btab)
            centers.extend(ctab)
         boxes = subbox
         n = n + 1

         if (n == cut_box ) :
           print('Solid not found in bounding Box (Volume : {})'.format(solid.Volume))
           print('Valid Solid : ', solid.isValid())
           return None

# divide a box into 8 smaller boxes
def CutBox(Box):
     xmid = (Box[1]+Box[0])*0.5
     ymid = (Box[3]+Box[2])*0.5
     zmid = (Box[5]+Box[4])*0.5

   
     b1 = (Box[0],xmid,Box[2],ymid,Box[4],zmid)
     p1 = (0.5*(Box[0]+xmid),0.5*(Box[2]+ymid), 0.5*(Box[4]+zmid))
   
     b2 = (xmid,Box[1],Box[2],ymid,Box[4],zmid)
     p2 = (0.5*(xmid+Box[1]), 0.5*(Box[2]+ymid), 0.5*(Box[4]+zmid))
   
     b3 = (Box[0],xmid,ymid,Box[3],Box[4],zmid)
     p3 = (0.5*(Box[0]+xmid),0.5*(ymid+Box[3]),0.5*(Box[4]+zmid))

     b4 = (xmid,Box[1],ymid,Box[3],Box[4],zmid)
     p4 = (0.5*(xmid+Box[1]),0.5*(ymid+Box[3]),0.5*(Box[4]+zmid))
      
     b5 = (Box[0],xmid,Box[2],ymid,zmid,Box[5])
     p5 = (0.5*(Box[0]+xmid),0.5*(Box[2]+ymid),0.5*(zmid+Box[5]))
   
     b6 = (xmid,Box[1],Box[2],ymid,zmid,Box[5])
     p6 = (0.5*(xmid+Box[1]),0.5*(Box[2]+ymid),0.5*(zmid+Box[5]))
   
     b7 = (Box[0],xmid,ymid,Box[3],zmid,Box[5])
     p7 = (0.5*(Box[0]+xmid),0.5*(ymid+Box[3]),0.5*(zmid+Box[5]))
     
     b8 = (xmid,Box[1],ymid,Box[3],zmid,Box[5])
     p8 = (0.5*(xmid+Box[1]),0.5*(ymid+Box[3]),0.5*(zmid+Box[5]))

     return [b1,b2,b3,b4,b5,b6,b7,b8],[p1,p2,p3,p4,p5,p6,p7,p8]


# check the position of the point with respect
# a surface
def surface_side(p,surf):
     if surf.type == 'sphere' :
        org,R = surf.params
        D = p-org
        inout = D.Length - R

     elif surf.type == 'plane' :
        normal,d = surf.params
        inout = p.dot(normal) - d

     elif surf.type == 'cylinder':
         P,v,R = surf.params
         D = p-P
         inout = D.cross(v).Length - R
         
     elif surf.type == 'cone':
         P,v,t,dblsht = surf.params
         X = p-P
         X.normalize()
         dprod = X.dot(v)
         dprod = max(-1,min(1,dprod))
         a = math.acos(dprod)
         if dblsht : a = math.acos(abs(dprod))  
         inout = a - math.atan(t)
         
     elif surf.type == 'torus':
         P,v,Ra,R = surf.params

         d = p-P
         if v[0] == 1.0 :
            sx1 = d.x*d.x
            sx2 = d.y*d.y
            sx3 = d.z*d.z 
         elif v[1] == 1.0 :
            sx1 = d.y*d.y
            sx2 = d.z*d.z
            sx3 = d.x*d.x
         else :
            sx1 = d.z*d.z
            sx2 = d.x*d.x
            sx3 = d.y*d.y

         inout = sx1/(R*R) + (math.sqrt(sx2+sx3)-Ra)**2/(R*R) -1 
        
     else:
       print ('surface type {} not considered'.format(surf[0]))
       return 
         
     return inout > 0 


#************************************************    

def FuseSolid(parts):
    if (len(parts)) <= 1:
       if parts :
          solid = parts[0]
       else:
          return None
    else:
       try:
          fused = parts[0].fuse(parts[1:])
       except:
          fused = None

       if fused is not None:
         try :
             refinedfused = fused.removeSplitter()
         except :
             refinedfused = fused

         if refinedfused.isValid() :
             solid = refinedfused
         else :
             if fused.isValid():
                solid = fused
             else:
                solid = Part.makeCompound(parts)
       else:
         solid = Part.makeCompound(parts)

    if solid.Volume < 0 : solid.reverse()
    return solid

