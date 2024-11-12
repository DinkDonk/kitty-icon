all:
	npx png2icons kitty-light.png kitty-light -icns && npx png2icons kitty-dark.png kitty-dark -icns

install-light-icon:
	magick kitty-light.png -resize 512x512 kitty-light-512.png
	xdg-icon-resource install --size 512 kitty-light-512.png custom-kitty-icon
	cp kitty.desktop ~/.local/share/applications/kitty.desktop


install-dark-icon:
	magick kitty-dark.png -resize 512x512 kitty-dark-512.png
	xdg-icon-resource install --size 512 kitty-dark-512.png custom-kitty-icon
	cp kitty.desktop ~/.local/share/applications/kitty.desktop

uninstall-icon:
	xdg-icon-resource uninstall --size 512 custom-kitty-icon
	rm ~/.local/share/applications/kitty.desktop
