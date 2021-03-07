#!/bin/bash
# This script creates those cool boxes that can be found on the data-transformation cheat-sheet from RStudio.


if [[ ! -d ./pngs ]]
then
 mkdir pngs
fi

SIZE=100
FONT="Noto-Sans-Bold"

# X Table
convert -size ${SIZE}x${SIZE} -pointsize  50 \
  -font ${FONT} \
  \( -fill white  -gravity center -background grey25 label:A -background grey25 label:B -background grey25 label:C -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:a -background grey75 label:t -background grey75 label:1 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:b -background grey75 label:u -background grey75 label:2 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:c -background grey75 label:v -background grey75 label:3 -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/X.png

# Y Table
convert -size ${SIZE}x${SIZE} -pointsize  50 \
  -font ${FONT} \
  \( -fill white  -gravity center -background '#95D840' label:A -background '#95D840' label:B -background '#95D840' label:D -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background '#FDE725' label:a -background '#FDE725' label:t -background '#FDE725' label:3 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background '#FDE725' label:b -background '#FDE725' label:u -background '#FDE725' label:2 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background '#FDE725' label:d -background '#FDE725' label:w -background '#FDE725' label:1 -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/Y.png

# A Table
convert -size ${SIZE}x${SIZE} -pointsize  50 \
  -font ${FONT} \
  \( -fill white  -gravity center -background grey25 label:X -background grey25 label:Y -background grey25 label:Z -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:a -background grey75 label:t -background grey75 label:1 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:b -background grey75 label:u -background grey75 label:2 -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/A.png

# B Table
convert -size ${SIZE}x${SIZE} -pointsize  50 \
  -font ${FONT} \
  \( -fill white  -gravity center -background '#95D840' label:W -background '#95D840' label:X -background '#95D840' label:Y -background '#95D840' label:Z -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background '#FDE725' label:Y -background '#FDE725' label:j -background '#FDE725' label:m -background '#FDE725' label:8 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background '#FDE725' label:Z -background '#FDE725' label:k -background '#FDE725' label:n -background '#FDE725' label:9 -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/B.png

# Bind Rows A and B
convert -size ${SIZE}x${SIZE} -pointsize  50 \
  -font ${FONT} \
  \( -fill white  -gravity center -background grey25    label:X -background grey25    label:Y -background grey25    label:Z -background grey25    label:W  -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75    label:a -background grey75    label:t -background grey75    label:1 -background white     label:NA -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75    label:b -background grey75    label:u -background grey75    label:2 -background white     label:NA -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background '#FDE725' label:j -background '#FDE725' label:m -background '#FDE725' label:8 -background '#FDE725' label:Y  -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background '#FDE725' label:k -background '#FDE725' label:n -background '#FDE725' label:9 -background '#FDE725' label:Z  -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/bind_rows.png

# Bind Cols X and Y
convert -size ${SIZE}x${SIZE} -pointsize  50  \
  -font ${FONT} \
  \( -fill white  -gravity center -background grey25 label:A -background grey25 label:B -background grey25 label:C -background '#95D840' label:A -background '#95D840' label:B -background '#95D840' label:D -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:a -background grey75 label:t -background grey75 label:1 -background '#FDE725' label:a -background '#FDE725' label:t -background '#FDE725' label:3 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:b -background grey75 label:u -background grey75 label:2 -background '#FDE725' label:b -background '#FDE725' label:u -background '#FDE725' label:2 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:c -background grey75 label:v -background grey75 label:3 -background '#FDE725' label:d -background '#FDE725' label:w -background '#FDE725' label:1 -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/bind_cols.png

# Left Join X and Y
convert -size ${SIZE}x${SIZE} -pointsize  50  \
  -font ${FONT} \
  \( -fill white  -gravity center -background grey25 label:A -background grey25 label:B -background grey25 label:C -background '#95D840' label:D -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:a -background grey75 label:t -background grey75 label:1 -background '#FDE725' label:3 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:b -background grey75 label:u -background grey75 label:2 -background '#FDE725' label:2 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:c -background grey75 label:v -background grey75 label:3 -background 'white' label:NA -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/left_join.png

# Right Join X and Y
convert -size ${SIZE}x${SIZE} -pointsize  50  \
  -font ${FONT} \
  \( -fill white  -gravity center -background '#95D840' label:A -background '#95D840' label:B -background grey25 label:C  -background '#95D840' label:D -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background '#FDE725' label:a -background '#FDE725' label:t -background grey75 label:1  -background '#FDE725' label:3 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background '#FDE725' label:b -background '#FDE725' label:u -background grey75 label:2  -background '#FDE725' label:2 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background '#FDE725' label:d -background '#FDE725' label:w -background white  label:NA -background '#FDE725' label:1 -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/right_join.png

# Inner Join X and Y
convert -size ${SIZE}x${SIZE} -pointsize  50  \
  -font ${FONT} \
  \( -fill white  -gravity center -background grey25 label:A -background grey25 label:B -background grey25 label:C -background '#95D840' label:D -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:a -background grey75 label:t -background grey75 label:1 -background '#FDE725' label:3 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:b -background grey75 label:u -background grey75 label:2 -background '#FDE725' label:2 -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/inner_join.png

# Full Join X and Y
convert -size ${SIZE}x${SIZE} -pointsize  50  \
  -font ${FONT} \
  \( -fill white  -gravity center -background grey25    label:A -background grey25    label:B -background grey25 label:C  -background '#95D840' label:D -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75    label:a -background grey75    label:t -background grey75 label:1  -background '#FDE725' label:3 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75    label:b -background grey75    label:u -background grey75 label:2  -background '#FDE725' label:2 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75    label:c -background grey75    label:v -background grey75 label:3  -background 'white'   label:NA -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background '#FDE725' label:d -background '#FDE725' label:w -background white  label:NA -background '#FDE725' label:1 -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/full_join.png

# Full Join X and Y by A
convert -size ${SIZE}x${SIZE} -pointsize  50  \
  -font ${FONT} \
  \( -fill white  -gravity center -background grey25 label:A -background grey25 label:B.x -background grey25 label:C  -background grey25    label:B.y label:D  -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:a -background grey75 label:t   -background grey75 label:1  -background '#FDE725' label:t   label:3  -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:b -background grey75 label:u   -background grey75 label:2  -background '#FDE725' label:u   label:2  -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:c -background grey75 label:v   -background grey75 label:3  -background 'white'   label:NA  label:NA -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:d -background white label:NA   -background white  label:NA -background '#FDE725' label:w   label:1  -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/full_join_byA.png

# Full Join X and Y by A C=D
convert -size ${SIZE}x${SIZE} -pointsize  50  \
  -font ${FONT} \
  \( -fill white  -gravity center -background grey25 label:A.x -background grey25 label:B.x \
  \( xc:grey25 -fill '#95DE40' -draw "path 'M 0,0 L 100,100 100,0 0,0'" -fill white -gravity center -annotate 0 "C" \) \
  -background '#95D840'  label:A.y label:B.y  -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:a   -background grey75 label:t \
  \( xc:grey75 -fill '#FDE725' -draw "path 'M 0,0 L 100,100 100,0 0,0'" -fill grey25 -gravity center -annotate 0 "1" \) \
  -background '#FDE725'  label:b   label:w    -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:b   -background grey75 label:u \
  \( xc:grey75 -fill '#FDE725' -draw "path 'M 0,0 L 100,100 100,0 0,0'" -fill grey25 -gravity center -annotate 0 "2" \) \
  -background '#FDE725'  label:d   label:u    -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75 label:c   -background grey75 label:v \
  \( xc:grey75 -fill '#FDE725' -draw "path 'M 0,0 L 100,100 100,0 0,0'" -fill grey25 -gravity center -annotate 0 "3" \) \
  -background '#FDE725'  label:a   label:t    -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/full_join_byCD.png

# Anti Join X and Y
convert -size ${SIZE}x${SIZE} -pointsize  50  \
  -font ${FONT} \
  \( -fill white  -gravity center -background grey25    label:A -background grey25    label:B -background grey25 label:C -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75    label:a -background grey75    label:t -background grey75 label:1 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75    label:c -background grey75    label:v -background grey75 label:3 -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/anti_join.png

# Semi Join X and Y
convert -size ${SIZE}x${SIZE} -pointsize  50  \
  -font ${FONT} \
  \( -fill white  -gravity center -background grey25    label:A -background grey25    label:B -background grey25 label:C -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75    label:a -background grey75    label:t -background grey75 label:1 -gravity none -background white -splice 5x0+0+0  +append \) \
  \( -fill grey25 -gravity center -background grey75    label:b -background grey75    label:u -background grey75 label:2 -gravity none -background white -splice 5x0+0+0  +append \) \
  -gravity none -background white -splice 0x5+0+0 -append -chop 5x5+0+0 pngs/semi_join.png

# X + Y =
convert -pointsize 100 \
  -font ${FONT} \
  pngs/X.png \
  \( -size ${SIZE}x${SIZE} xc:white -fill grey25 -gravity center -annotate 0 "+" \) \
  pngs/Y.png \
  \( -size ${SIZE}x${SIZE} xc:white -fill grey25 -gravity center -annotate 0 "=" \) \
  +append pngs/combine.png

# A + B =
convert -pointsize 100 \
  -font ${FONT} \
  pngs/A.png \
  \( -size ${SIZE}x${SIZE} xc:white -fill grey25 -gravity center -annotate 0 "+" \) \
  pngs/B.png \
  \( -size ${SIZE}x${SIZE} xc:white -fill grey25 -gravity center -annotate 0 "=" \) \
  +append pngs/combineAB.png

# Make the joining equations.

convert -pointsize 100 -font ${FONT} pngs/combine.png pngs/bind_cols.png      -gravity center +append pngs/bind_cols_eqn.png
convert -pointsize 100 -font ${FONT} pngs/combine.png pngs/full_join.png      -gravity center +append pngs/full_join_eqn.png
convert -pointsize 100 -font ${FONT} pngs/combine.png pngs/full_join_byA.png  -gravity center +append pngs/full_join_byA_eqn.png
convert -pointsize 100 -font ${FONT} pngs/combine.png pngs/full_join_byCD.png -gravity center +append pngs/full_join_byCD_eqn.png
convert -pointsize 100 -font ${FONT} pngs/combine.png pngs/left_join.png      -gravity center +append pngs/left_join_eqn.png
convert -pointsize 100 -font ${FONT} pngs/combine.png pngs/right_join.png     -gravity center +append pngs/right_join_eqn.png
convert -pointsize 100 -font ${FONT} pngs/combine.png pngs/inner_join.png     -gravity center +append pngs/inner_join_eqn.png
convert -pointsize 100 -font ${FONT} pngs/combine.png pngs/anti_join.png      -gravity center +append pngs/anti_join_eqn.png
convert -pointsize 100 -font ${FONT} pngs/combine.png pngs/semi_join.png      -gravity center +append pngs/semi_join_eqn.png

convert -pointsize 100 -font ${FONT} pngs/combineAB.png pngs/bind_rows.png -gravity center +append pngs/bind_rows_eqn.png



