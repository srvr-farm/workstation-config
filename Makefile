.PHONY: install ghostty


ghostty:
	mkdir -p ~/.config/ghostty
	cp files/ghostty/config ~/.config/ghostty/config

install: ghostty
