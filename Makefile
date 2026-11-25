PANDOC ?= pandoc
SOURCE ?= Lessons_learned_from_30_years_of_Minix-JP.md
OUTPUT = $(SOURCE:.md=.html)

.PHONY: all
all: $(OUTPUT)

%.html: %.md style.css
	$(PANDOC) -c style.css --embed-resources -s "$<" -o "$@"
