all: PDF

PDF : HollowMountainII-2007to2012.tex */*.md
#PDF
#We do it in two steps so we can use a custom header file to set up Latex environment etc.
	pandoc -S --toc --chapters -o HollowMountainII-2007to2012_content.tex */*.md
	xelatex HollowMountainII-2007to2012.tex
#pandoc -S --toc --chapters --latex-engine=xelatex -o HollowMountainII-2007to2012.pdf */*.md

#Epub
epub: HollowMountainII-2007to2012.epub */*.md
	pandoc -S --toc --chapters -o HollowMountainII-2007to2012.epub */*.md
