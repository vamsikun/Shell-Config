### Gnome-Extensions

- List of gnome-extensions can be found in the following dirs
	- ~/.local/share/gnome-shell/extensions  => manually installed extensions
	- usr/share/gnome-shell/extensions
- We can install extensions by using gnome-extensions command

#### nvidiautil@ethanwharris

- This plugin was supposed to give hardware info the GPU; but somehow gpu-settings in my machine were not supporting some attributes so I had to comment out those attributes from the source code for showing just GPU-temp and GPU-power usage
	- for this we must have 
		- nvidia-smi
		- nvidia-settings
