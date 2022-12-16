#########################################################
## MMIR01. Packages
## Example of how to use Packages
## Setup file
## For more info:
## https://www.tutorialspoint.com/tcl-tk/tcl_packages.htm
#########################################################

#eval command evaluates strings as they were commands typed at the % prompt
set cmd1 "pkg_mkIndex p1 *.tcl"
set cmd2 "pkg_mkIndex p2 *.tcl"
if {[info complete $cmd1]} {
    eval $cmd1
} else {
    puts "INCOMPLETE COMMAND: $cmd1"
}

if {[info complete $cmd2]} {
    eval $cmd2
} else {
    puts "INCOMPLETE COMMAND: $cmd2"
}