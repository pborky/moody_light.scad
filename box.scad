BOTTOM =1;
MIDDLE = 2;
TOP = 3;
SHADER = 4;

//select = SHADER;

a = 79.3; // vnutorna sirka
b = 70.5; // vn. vyska
c = 32; // vnutorna hlobka

d = 6; //stena

e = 8; // usb - sirka
f = 5; // usb - vyska


h = 13.3; // usb nad dnom

k = 26; // roztec srobov
dk = 3 ; // priemer srobov

m = 44; // vyska shadera
n = 2; // tloustka stropu

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
//difference() {
//	translate ([0,0,0]) cube( [a+d,b+d,c+d] );
//	translate ([3*d/4,3*d/4,d]) cube( [a-d/2,b-d/2,c+1] );
//}
}

if (select==MIDDLE) {
union() {
difference() {
	translate ([0,0,0]) cube( [a+d,b+d,2*d] );
	translate ([d/2,d/2,-1]) cube( [a,b,2*d+2] );
}
difference() {
	translate ([d/2,d/2,0]) cube( [a,b,3*d] );
	translate ([3*d/4,3*d/4,-1]) cube( [a-d/2,b-d/2,3*d+2] );
}
}
}

if (select==TOP) {
union() {
difference() {
	translate ([0,0,0]) cube( [a+d,b+d,d] );
	translate([(a+d)/2,(b+d)/2,0])
			cylinder(h=30, r=dk, center=true);
	translate([(a+d)/2,(b+d+k)/2,0])
			cylinder(h=30, r=dk/2, center=true);
	translate([(a+d)/2,(b+d-k)/2,0])
			cylinder(h=30, r=dk/2, center=true);
	//translate ([d/2,d/2,-1]) cube( [a,b,d+2] );
}
difference() {
	translate ([3*d/4,3*d/4,0]) cube( [a-d/2,b-d/2,d+d] );
	translate ([d,d,-1]) cube( [a-d,b-d,d+d+2] );
}
}
}

if (select==SHADER) {
	difference() {
		translate ([0,0,0]) cube( [a+3*d/2,b+3*d/2,m] );
               translate ([d/2,d/2,0]) cube( [a+d/2,b+d/2,m-n] );
		translate ([d/4,d/4,0]) cube( [a+d,b+d,d/3] );
		
	}
}
