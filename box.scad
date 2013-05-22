BOTTOM =1;
MIDDLE = 2;
TOP = 3;

select =  TOP;

a = 79.3; // vnutorna sirka
b = 70.5; // vn. vyska
c = 32; // vnutorna hlobka

d = 4; //stena

e = 8; // usb - sirka
f = 5; // usb - vyska


h = 13.3; // usb nad dnom.

if (select==BOTTOM) {

union() {
	translate ([d/2,d/2,d]) cube( [d+1,d+1,d] );
	translate ([a-d+1,d/2,d]) cube( [d+1,d+1,d] );
	translate ([d/2,b-d+1,d]) cube( [d+1,d+1,d] );
	translate ([a-d+1,b-d+1,d]) cube( [d+1,d+1,d] );
difference() {
	translate ([0,0,0]) cube( [a+d,b+d,c+d] );
	translate ([d/2,d/2,d]) cube( [a,b,c+1] );
	translate ([-1,b/2+e/4+0.5,2*d+h]) cube( [10, e/2, f] );
	translate ([-1,b/2-e/4-0.5,2*d+h]) cube( [10, e/2, f] );
}
}
difference() {
	translate ([0,0,0]) cube( [a+d,b+d,c+d] );
	translate ([3*d/4,3*d/4,d]) cube( [a-d/2,b-d/2,c+1] );
}
}

if (select==MIDDLE) {
union() {
difference() {
	translate ([0,0,0]) cube( [a+d,b+d,4+d] );
	translate ([d/2,d/2,-1]) cube( [a,b,4+d+2] );
}
difference() {
	translate ([d/2,d/2,0]) cube( [a,b,8+d] );
	translate ([3*d/4,3*d/4,-1]) cube( [a-d/2,b-d/2,8+d+2] );
}
}
}

if (select==TOP) {
union() {
difference() {
	translate ([0,0,0]) cube( [a+d,b+d,d] );
}
difference() {
	translate ([3*d/4,3*d/4,0]) cube( [a-d/2,b-d/2,d+d] );
	translate ([d,d,-1]) cube( [a-d,b-d,d+d+2] );
}
}
}