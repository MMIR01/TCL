###############################################
## MMIR01. Arrays (2)
## Arrays as arguments
###############################################

#This example does not work
#proc printValue {a} {
#   puts "$a(1), $a(2)"
#}

#set array(1) "A"
#set array(2) "B"

#printValue $array


#The only way to use arrays as arguments is in this way
proc printValue {array} {
   upvar $array a
   puts "$a(1), $a(2)"
}

set array(1) "A"
set array(2) "B"

printValue array