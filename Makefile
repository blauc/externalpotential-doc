.PHONY: msc2svg msc2png dot2svg dot2png
all: msc2svg msc2png dot2svg dot2png
mscfiles=$(wildcard *msc)
dotfiles=$(wildcard *dot)
msc2svg: $(mscfiles)
	mscgen -Tsvg -o $(mscfiles).svg $(mscfiles); done
msc2png: $(mscfiles)
	mscgen -Tpng -o $(mscfiles).png $(mscfiles); done
dot2svg: $(dotfiles)
	dot -Tsvg -o $(dotfiles).svg $(dotfiles); done
dot2png: $(dotfiles)
	dot -Tpng -o $(dotfiles).png $(dotfiles); done

clean: $(dotfiles).svg $(dotfiles).png $(mscfiles).svg $(mscfiles).png
	rm $(dotfiles).svg
	rm $(dotfiles).png
	rm $(mscfiles).svg
	rm $(mscfiles).png
