all: compile_pdf

compile_pdf: create_build_dir
	for _ in 1 2 ; do \
		pdflatex -output-directory build/ projet_de_session.tex ; \
	done

create_build_dir:
	mkdir -p build

clean:
	rm -r build
