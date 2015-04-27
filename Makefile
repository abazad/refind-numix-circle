.PHONY: all
ICONS=$(patsubst %.svg,%.png,$(wildcard icons/*.svg))
SELECTION=selection_big.png selection_small.png
BACKGROUND=background.png
FONTS=fonts/font.png

.PHONY: all clean

all: $(ICONS) $(SELECTION) $(BACKGROUND) $(FONTS)

clean:
	rm -f $(ICONS)
	rm -f $(SELECTION)
#	rm -f $(BACKGROUND)
	rm -f $(FONTS)

selection_big.png: selection.svg
	./convert "$@" "$^" 144

selection_small.png: selection.svg
	./convert "$@" "$^" 64

os_%.png: os_%.svg
	./convert "$@" "$^" 128

boot_%.png: boot_%.svg
	./convert "$@" "$^" 128

arrow_%.png: arrow_%.svg
	./convert "$@" "$^" 48

tool_%.png: tool_%.svg
	./convert "$@" "$^" 48

func_%.png: func_%.svg
	./convert "$@" "$^" 48

vol_%.png: vol_%.svg
	./convert "$@" "$^" 32

fonts/font.png: fonts/SourceCodePro-Bold.otf
	fonts/mkfont.sh "$^" 14 -3 "$@"
