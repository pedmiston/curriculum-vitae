PRINT ?=no
NAME ?=output/Pierce-Edmiston-CV-`date +'%Y-%m-%d'`.pdf

ifeq "$(PRINT)" "no"
NAME := $@
endif

curriculum-vitae.pdf: curriculum-vitae.tex
	context --autopdf --purgeall --result=$(NAME) $<
curriculum-vitae.tex: curriculum-vitae.md
	pandoc --from markdown --to context --template style/curriculum-vitae.tex --standalone -V papersize=A4 -o $@ $<
