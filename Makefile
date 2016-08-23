vitae: curriculum-vitae.md
	pandoc \
		--standalone \
		--template style/curriculum-vitae.tex \
		--from markdown --to context \
		-V papersize=A4 \
		-o curriculum-vitae.tex \
		curriculum-vitae.md

	context \
		--autopdf --purgeall \
		--result=output/Edmiston-CV-`date +'%Y-%m-%d'`.pdf \
		curriculum-vitae.tex

	rm -f curriculum-vitae.tex curriculum-vitae.tuc
