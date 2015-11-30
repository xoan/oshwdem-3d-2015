difference() {
  union() {
    cylinder(r = 5.5/2, h = 4.5, $fn = 24);
    translate(v = [0,-5.5/2,0])
      cube(size = [30,5.5,4.5]);
    translate([30,0,0])
      cylinder(r = 5.5/2, h = 4.5, $fn = 24);
  }

  for(i = [0:6])
    translate(v = [i*5,0,-1])
      cylinder(r = 3.5/2, h = 4.5+2, $fn = 16);
}