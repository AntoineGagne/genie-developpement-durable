BUILD_DIR=build
FILE_SRC=projet_de_session.tex
SHELL=/bin/sh

COMPILE_TEX := latexmk -pdf -output-directory=$(BUILD_DIR)

.SUFFIXES: .bib .pdf .tex
.PHONY: all create_build_dir clean check compile_pdf

all: compile_pdf

compile_pdf: create_build_dir
	$(COMPILE_TEX) $(notdir $(FILE_SRC))

create_build_dir:
	mkdir -p $(BUILD_DIR)

check: create_build_dir
	find . -name *.tex -exec chktex {} \; | tee "$(BUILD_DIR)/lint.out"

clean:
	rm -rf $(BUILD_DIR)
