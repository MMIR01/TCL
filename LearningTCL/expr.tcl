###############################################
## MMIR01. Operands
###############################################

set var1 1
set var2 2
set res [expr {$var1 + $var2}]
puts "$var1 \+ $var2 \= $res"

puts "Dividing two numbers"
puts [expr {$var1 / $var2}]
#Set var1 as float
set var1 1. 
puts [expr {$var1 / $var2}] 
puts "Other operations"
set a [expr {1.0/3.0}]
puts "3*(1/3) is [expr {3.0*$a}]"

puts "Comparing two strings"
set s1 "String1"
set s2 "String2"
puts "Are equal '$s1' and '$s2'?:"
puts [expr {$s1 eq $s2}]
set s3 "String1"
puts "Are equal '$s1' and '$s3'?:"
puts [expr {$s1 eq $s3}]
puts "Are inequal '$s1' and '$s2'?:"
puts [expr {$s1 ne $s2}]
set list1 "String1 String2 String3"
set s4 "String4"
puts "Are the string '$s1' in the list '$list1'?:"
puts [expr {$s1 in $list1}]
puts "Are the string '$s4' in the list '$list1'?:"
puts [expr {$s4 in $list1}]
puts "Are not the string '$s4' in the list '$list1'?:"
puts [expr {$s4 ni $list1}]

