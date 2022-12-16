###############################################
## MMIR01. Modularization
## Example of Modularization.
## This file will be called from the main
###############################################

set scriptname [info script]
puts "Executing: $scriptname"

#The script will return exit_1
return "exit_1"
#In case we comment the line above, the script
#will return the last line. Otherwise "value" will not be
#accesible from the main
set value "exit_2"