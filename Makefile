NAME := pplmin
BUILD := build

all:
	mkdir -p $(BUILD)
	g++ -arch x86_64 -arch arm64 -std=c++23 src/*.cpp -o $(BUILD)/$(NAME) -Os -fno-ident -fno-asynchronous-unwind-tables -Wl,-dead_strip -Wl,-x
	
install:
	cp $(BUILD)/$(NAME) /usr/local/bin/$(NAME)
	
clean:
	rm $(PRIMESDK)/bin/$(NAME)
