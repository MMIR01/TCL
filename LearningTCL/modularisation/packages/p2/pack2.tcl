###############################################
## MMIR01. Packages
## Example of how to use Packages
## Pack2: 
## This file placed in other folder, contains 
## functions to be used in the main
###############################################

# Create the namespace
namespace eval ::pack2 {
 
  # Export MyProcedure
  puts "Exporting commands..."
  namespace export func1
 
  # My Variables
   set version 1.0
   set MyDescription "Pack2"

}

proc ::pack2::func1 {} {
	puts "Function 1 of pack2"
}

#Version 1 of the file
package provide pack2 $pack2::version