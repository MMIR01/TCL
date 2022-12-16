###############################################
## MMIR01. TCL Data Structures.
## Lists (II): sort, range and search
###############################################

set list1 [list "a" "d" "b" "e" "c"]
puts "list1: $list1"
set new_list [lsort $list1]
puts "Sorting the list: $new_list"

puts "Looking for c"
puts "Index: [lsearch $list1 c]"


puts "Creating a subset (1-3)"
set sublist [lrange $new_list 1 3]
puts "Result: $sublist"