Smoothness = 360;
tol = 0.1;
Walls = 2;


x_Hole = 40;
y_Hole = 205;
z_Hole = 2.9;
r_Hole = 3/2;
n_Hole = 20;
x_offset_Hole = 10;
y_offset_Hole = 10;


grid = 0;


module grid(){
difference(){
    translate([-x_Hole/2,-y_Hole/2,0])cube([x_Hole,y_Hole,z_Hole]);
    
    for ( i = [0:n_Hole]){
        translate([x_Hole/2-x_offset_Hole ,-y_Hole/2+y_offset_Hole+i*((y_Hole-2*y_offset_Hole)/n_Hole),-tol])cylinder(r=r_Hole, h=z_Hole+2*tol+50, $fn=Smoothness);
    }
}
}


if (grid == 0){grid();}