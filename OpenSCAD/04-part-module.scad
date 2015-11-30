h = 4.5;  //height
d = 3.5;  //hole diameter
wall = 1; //wall thickness
m = 5;

r = d/2;
res = 4; //resolution

module part(holes = 1) {
  difference() {
    hull() {
      for(i = [0, holes-1])
        translate([i*m,0,0])
          cylinder(r = r+wall, h = h, $fn = round(r+wall)*2*res);
    }

    for(i = [0:holes-1])
      translate(v = [i*m,0,-1])
        cylinder(r = r, h = h+2, $fn = r*2*res);
  }
}

part(1);

translate(v = [0,10,0])
  part(7);

translate(v = [0,20,0])
  part(9);

translate(v = [0,30,0])
  part(11);