files = $(wildcard src/*.cr)
objects = $(patsubst src/%.cr,%,$(files))
all: $(objects)
$(objects): %:%.cr

%.cr:
	@crystal build src/$@

clean:
	@rm -f $(objects)
