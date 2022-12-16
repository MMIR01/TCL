###############################################
## MMIR01. TCL Data Structures.
## Lists
###############################################

set list1 {{"item 1"} {"item 2"} {"item 3"}}
set list2 [list "i1" "i2" "i3"]
set list3 [split "it1.it2.it3" "."]

lindex list1 0
puts "Printing list1, element 1: [lindex $list1 0]"

puts "Printing all elements of a list by using foreach"
set i 0
foreach elem $list2 {
    puts "list2\[$i]: $elem"
    incr i
}

#This list will just have 2 elements
puts "List with 2 args"
set date [split 11/1/1981 "/"]
set list3 [list puts "arg 2 is $date" ]
set i 0
foreach elem2 $list3 {
	puts "list3\[$i]: $elem2"
	incr i
}

puts "Adding new elements"
lappend list1 {"new1"} {"new2"}
lappend list1 $list2 
set i 0
foreach elem $list1 {
    puts "list1\[$i]: $elem"
    incr i
}

puts "Inserting new elements"
puts "Insert NEW1 at the beginning"
set new_list [linsert $list2 0 "NEW1"]
#Take into account, that insert command return a new list each time
puts "List2 is not modified: $list2" 
puts "Result: $new_list" 
puts "Insert NEW2 at the end"
set new_list [linsert $list2 end "NEW2"]
puts "Result: $new_list" 
puts "Insert NEW3 in the middle"
set new_list [linsert $list2 2 "NEW3"]
puts "Result: $new_list" 

puts "Reemplacing values"
lset list2 1 replaced
puts "List2 is modified: $list2" 
