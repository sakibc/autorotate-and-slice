watchman-wait . -m 0 -p 'to-print/*.stl' | while read -r file
prepped="prepped/"
sliced="sliced/"
stl=".stl"
gcode=".gcode"
do
  if [ -f $file ]; then
    name=$(echo $file | cut -d'/' -f 2 | cut -d'.' -f 1)
    python3 Tweaker-3/Tweaker.py -i $file -vb -o $prepped$name$stl
    slic3r $prepped$name$stl --load slic3r_config.ini --output $sliced$name$gcode
  fi
done
