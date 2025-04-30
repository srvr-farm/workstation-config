.PHONY: install ghostty


ssh-config:
	cat  files/ssh/config > ~/.ssh/lan.config
	echo "Include $(HOME)/.ssh/lan.config" >> ~/.ssh/config
	chmod 600 ~/.ssh/config ~/.ssh/lan.config

ghostty:
	mkdir -p ~/.config/ghostty
	cp files/ghostty/config ~/.config/ghostty/config

install-init:
	mkdir -p ~/.config/systemd/user/ ~/.local/bin/
	sudo mkdir -p /etc/systemd/system/user\@.service.d
	sudo cp "files/etc/systemd/system/user@.service.d/local.conf" /etc/systemd/system/user\@.service.d/local.conf
	cp -R "files/bin" ~/.local/
	cp -R "files/systemd/user" ~/.config/systemd/
	systemctl --user enable session-init.service
	systemctl --user start session-init.service
		

install: install-init ghostty
