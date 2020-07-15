.PHONY: clean

CC = xelatex
EXAMPLES_DIR = examples
CV_DIR = examples/cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
