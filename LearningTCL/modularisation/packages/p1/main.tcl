#########################################################
## MMIR01. Packages
## Example of how to use Packages
## This file is the main
#########################################################

# Declare the auto_path variable to allow tcl to find the files
set currentDir [pwd]
lappend auto_path $currentDir
set last [string last "/" $currentDir]
set path2 [string range $currentDir 0 $last]
set path2 [append path2 "p2"]
lappend auto_path $path2
#Debug
#puts $path1
#puts $path2
#puts $auto_path

#It will get the last version of pack1.tcl
package require pack1
package require pack2

puts "Calling functions from other file:"
puts [pack1::f1]
puts [pack1::f2]
puts [pack2::func1]
puts "Calling a function not exported"
puts [pack1::NoExport]