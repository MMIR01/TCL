###############################################
## MMIR01. Set variables
###############################################

set var1 1.24; #type float
set var2 "String"; #type string

puts "The value of the \$var1 is $var1"; #we use \ to escape some characters
puts {The value of the \$var1 is $var1}; #Braces does not do a substitution
puts $var2

puts "In this example, var3 and var4 will have the same value"
#First: var4="Testing..."; Second var 3 returned value ("Testing...")
set var3 [set var4 "Testing returned values"]
puts "\$var3 is: $var3"
puts "\$var4 is: $var4"

puts "In this example, there is no substitution, so var3 is \[set var4...]"
set var3 {[set var4 "Testing returned values"]}; #No substitution between curly braces"
puts $var3
puts "In this example, there is not returned value, since \[ is escaped"
set var5 "\[set var2 {This is a string within braces within quotes}]"
puts $var5
puts "\$var2 should have the same value (String)"
puts $var2