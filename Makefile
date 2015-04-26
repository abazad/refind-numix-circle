.PHONY: all
ICONS=$(patsubst %.svg,%.png,$(wildcard icons/*.svg))
SELECTION=selection_big.png selection_small.png
BACKGROUND=background.png

all: $(ICONS) $(SELECTION) $(BACKGROUND)

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
