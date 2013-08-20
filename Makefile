BOTTOM=1
MIDDLE=2
TOP=3
SHADER=4

all: 1 2 3 4

clean:
	rm *stl

%:
	openscad -Dselect=$@ -o box-$@.stl box.scad
