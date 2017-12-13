# Autorotate and Slice
A simple script that watches for new files in a folder, autorotates them to make them more printable, then slices them and places the finished gcode files in the "sliced/" folder. Autorotation is done using the Tweaker-3 module by Christoph Schranz (https://github.com/ChristophSchranz/Tweaker-3). Slicing is done using Slic3r, which needs to be in your path. Watchman is used to watch for changes.

## Future Plans
- Allow quick selection of different Slic3r presets, depending on the filename or folder it's placed into, maybe.
- Automatically slice with support if required.
- Make it send the sliced files to one of our idle printers, somehow.
