

a = 79.3; // vnutorna sirka
b = 70.5; // vn. vyska
c = 32; // vnutorna hlobka

d = 4; //stena

e = 8; // usb - sirka
f = 5; // usb - vyska
h = 13.3; // usb nad dnom.



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