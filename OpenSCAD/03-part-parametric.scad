h = 4.5;  //height
d = 3.5;  //hole diameter
wall = 1; //wall thickness
m = 5;    //module (hole distance)

holes = 7;

r = d/2;

difference() {
  union() {
    cylinder(r = r+wall, h = h, $fn = 24);
    translate(v = [0,-r-wall,0])
      cube(size = [(holes-1)*m,d+wall*2,h]);
    translate([(holes-1)*m,0,0])
      cylinder(r = r+wall, h = h, $fn = 24);
  }

  for(i = [0:holes-1])
    translate(v = [i*m,0,-1])
      cylinder(r = r, h = h+2, $fn = 16);
}