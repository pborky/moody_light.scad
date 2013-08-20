BOTTOM=1
MIDDLE=2
TOP=3
SHADER=4

BUILD_DIR=build/

all: 1 2 3 4

clean:
	rm $(BUILD_DIR)*stl

$(BUILD_DIR):
	if [ ! -d $@ ]; then mkdir $@; fi

%: $(BUILD_DIR)
	openscad -Dselect=$@ -o $(BUILD_DIR)box-$@.stl box.scad
