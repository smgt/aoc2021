files = $(wildcard src/*.cr)
objects = $(patsubst src/%.cr,%,$(files))
all: $(objects)
$(objects): %:%.cr

%.cr:
	@echo crystal build src/$@

clean:
	@rm -f $(objects)
