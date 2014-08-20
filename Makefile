ALL = Namespace Structured_programming Union Resource_acquisition_is_initialization Syntactic_sugar

all: $(ALL)

clean: $(ALL)
	rm $(ALL)

%: %.c
	cc -o $@ $<

%: %.cpp
	c++ --std=c++11 -o $@ $<

.PHONY: all clean
