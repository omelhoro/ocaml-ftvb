PROG_NAME = out

SOURCES = $(wildcard *.ml)
SOURCES += $(wildcard tests/*.ml)
RESULT = $(PROG_NAME)

PACKS = oUnit

-include OCamlMakefile

run:
	make
	./$(PROG_NAME)
	make cleanup
