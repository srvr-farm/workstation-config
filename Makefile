.PHONY: install ghostty


ssh-config:
	cat  files/ssh/config > ~/.ssh/lan.config
	echo "Include $(HOME)/.ssh/lan.config" >> ~/.ssh/config
	chmod 600 ~/.ssh/config ~/.ssh/lan.config



ghostty:
	mkdir -p ~/.config/ghostty
	cp files/ghostty/config ~/.config/ghostty/config

install: ghostty
