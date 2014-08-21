ALL = Namespace Structured_programming Union Resource_acquisition_is_initialization Syntactic_sugar Transcompiler.js

all: $(ALL)

clean: $(ALL)
	rm $(ALL)

%: %.c
	cc -o $@ $<

%: %.cpp
	c++ --std=c++11 -o $@ $<

%.js: %.coffee
	coffee -c $<

.PHONY: all clean
