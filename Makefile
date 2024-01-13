.PHONY: all math inf full

all: math inf full


math:
	cd math && $(MAKE)
inf:
	cd inf && $(MAKE)
full:
	cd full && $(MAKE)

clean-math:
	cd math && $(MAKE) clean
clean-inf:
	cd inf && $(MAKE) clean
clean-full:
	cd full && $(MAKE) clean

clean: clean-math clean-inf clean-full
