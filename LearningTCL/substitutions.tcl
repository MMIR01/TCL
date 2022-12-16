###############################################
## MMIR01. Substitution
## Substitution using reg expressions
###############################################

set s1 "System version: v12.40"
puts "Original string: $s1"
puts "Changing string..."
regsub {v[0-9][0-9]\.[0-9]*} $s1 "v14.1" s2
puts "New string: $s2"