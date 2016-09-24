BUILD_DIR=build
FILE=projet_de_session
SHELL=/bin/sh

DRAFT_MODE=pdflatex -draftmode -output-directory
COMPILE_TEX=pdflatex -output-directory

.SUFFIXES: .bib .pdf .tex

all: compile_pdf

compile_pdf: bibliography
	$(DRAFT_MODE) $(BUILD_DIR) "$(FILE).tex"
	$(COMPILE_TEX) $(BUILD_DIR) "$(FILE).tex"

bibliography: generate_aux
	biber "$(BUILD_DIR)/$(FILE)"

generate_aux: create_build_dir
	$(DRAFT_MODE) $(BUILD_DIR) "$(FILE).tex"
	$(DRAFT_MODE) $(BUILD_DIR) "$(FILE).tex"

create_build_dir:
	mkdir -p $(BUILD_DIR)

check: create_build_dir
	find . -name *.tex -exec chktex {} \; | tee "$(BUILD_DIR)/lint.out"

clean:
	rm -rf $(BUILD_DIR)
