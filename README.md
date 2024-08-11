# Shape-key code generator (LineMaker)
Using Blender's Python API, I made a code-generation script that allows me to
draw Blender objects in another program. The script takes a curve object and 
all of it's shape keys, and generates a set of Java functions to draw it's curves
in the Processing environment. Along with a small template, the generated functions
let users draw shapes at any position or scale, and to specify shape-key values.

Although the script is limited and was never intended for public release, it does
let users easily use shapes made in Blender for creative coding projects in Processing.
