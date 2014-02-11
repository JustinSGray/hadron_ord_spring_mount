use </Users/justin/personal/3dprint/scad/scad_plugins/threads.scad>

res = .1;
$fa = res;
$fs = res;

spring_or = 5.7;
screw_mount_width = 8;
screw_mount_length = 35;
bolt_hole_r = 1.5;
bolt_hole_spacing = 30.1;

mount_offset = 7;

difference(){
	union(){
		translate([0,6,mount_offset])rotate([45,0,0]) {
				cylinder(h=8, r=spring_or+2);
		}
		translate([-screw_mount_length/2, -(spring_or+1), 0]) cube([screw_mount_length,5,screw_mount_width]);
		translate([-5, -3, 0]) cube([10,5,screw_mount_width]);
	}
	union(){
		translate([0,6,mount_offset])rotate([45,0,0]){
	    		translate([0,0,-5]) cylinder(h=20, r=spring_or); // hole
		}
	}
	//bolt holes
	translate([-bolt_hole_spacing/2,1,screw_mount_width/2]) rotate(a=[90,0,0]) cylinder(h=10, r=bolt_hole_r);
	translate([bolt_hole_spacing/2,1,screw_mount_width/2]) rotate(a=[90,0,0]) cylinder(h=10, r=bolt_hole_r);
}




