.PHONY: all clean unit acceptance

all: mystika.dyalog

unit: mystika.dyalog ut.dyalog
	LD_LIBRARY_PATH=. mapl ws/unit

acceptance: mystika.dyalog at.dyalog
	LD_LIBRARY_PATH=. mapl ws/acceptance

clean:
	rm -rf mystika.dyalog ut.dyalog at.dyalog
	
mystika.dyalog: ns/*.cd
	echo ':Namespace mystika' > mystika.dyalog
	bin/assemble ns/*.cd >> mystika.dyalog

ut.dyalog: ut/*.cd
	echo ':Namespace ut' > ut.dyalog
	bin/assemble ut/*.cd >> ut.dyalog

at.dyalog: at/*.cd
	echo ':Namespace at' > at.dyalog
	bin/assemble at/*.cd >> at.dyalog

