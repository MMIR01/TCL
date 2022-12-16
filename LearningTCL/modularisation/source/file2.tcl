###############################################
## MMIR01. Modularization
## Example of Modularization.
## This file will be called from the main.
## It contains a function
###############################################

set scriptname [info script]
puts "Executing: $scriptname"

proc funct1 {} {
	puts "New function"
	puts "Pid of the current process:"
	puts [pid]
}

return 0