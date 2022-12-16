###############################################
## MMIR01. Modularization
## Example of Modularization.
## This is the main.
###############################################

#Example 1
set filename "file1.tcl"
puts "Calling the file: $filename"
set returnVal [source $filename]
puts "Returned value: $returnVal"

if {[info exists value]} {
	puts "Value variable defined in $filename"
	puts $value
} else {
	puts "Value variable not defined in $filename"
}

#Example 2. File with a function
set filename "file2.tcl"
if {[info procs funct1] eq ""} {
	puts "Function is not defined yet"
}
puts "Calling the file: $filename"
set returnVal [source $filename]

if {[info procs funct1] != ""} {
	puts "Function is now defined"
}

puts "Using the function..."
funct1