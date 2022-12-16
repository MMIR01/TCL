###############################################
## MMIR01. Strings. Subcommands
## 1) length, index and range
## 2) Compare
###############################################

set s1 "New string"
puts "String: $s1"
puts "Number of characters: [string length $s1]"
puts "Index: 1 - Character: [string index $s1 1]"
puts "Substring (0-2): [string range $s1 0 2]"

puts "Strings comparisons"
set sA "StringA"
set sA2 "StringA"
puts "First comparison - equal: [string compare $sA $sA2]"
set sB "StringB"
puts "First comparison - differents: [string compare $sA $sB]"
