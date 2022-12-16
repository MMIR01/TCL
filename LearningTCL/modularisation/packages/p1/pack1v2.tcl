###############################################
## MMIR01. Packages
## Example of how to use Packages
## Pack1 second version: 
## This file contains functions to be used in
## the main
###############################################

# Create the namespace
namespace eval ::pack1 {
 
  # Export MyProcedure
  puts "Exporting commands..."
  namespace export f1 f2
 
  # My Variables
   set version 2.0
   set MyDescription "Pack1 - updated"

}

proc ::pack1::NoExport {} {
	puts "This function cannot be used out this file"
}

proc ::pack1::f1 {} {
	puts "Function 1 of pack1 - updated"
}

proc ::pack1::f2 {} {
	puts "Function 2 of pack1 - updated"
}

#Version 1 of the file
package provide pack1 $pack1::version