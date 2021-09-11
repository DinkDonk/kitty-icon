Kitty Application Icon
======================

<p float="left">
	<img src="kitty-dark.png" width="180">
	<img src="kitty-light.png" width="180">
</p>

An alternative MacOS application icon for the wonderful [Kitty](https://sw.kovidgoyal.net/kitty/) terminal emulator.

### Installation

1. Find `kitty.app` in the `Applications` folder, select it and press `⌘ + i`.
2. Drag `kitty-dark.icns` or `kitty-light.icns` onto the application icon in the `kitty info` pane.
3. Delete the icon cache and restart `Dock`:

```bash
$ rm /var/folders/*/*/*/com.apple.dock.iconcache; killall Dock
```

### Building

Requires [node](https://nodejs.org/en/) and [npx](https://www.npmjs.com/package/npx).

```bash
$ make
```

### Other alternatives

* [Icon by k0nserv](https://github.com/k0nserv/kitty-icon)
