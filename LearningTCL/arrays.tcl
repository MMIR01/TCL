###############################################
## MMIR01. Associative Arrays
###############################################

#Array with three elements
set name(first) "John"
set name(mid) "A."
set name(last) "Thomson"

puts "Full name: $name(first) $name(mid) $name(last)"

#Size of arrays
puts "Size of the array: [array size name]"

#Name of the indexs
puts "Name of the indexs: [array names name]"

#Returns a list in which each odd member of the list is an index into the associative array
set list1 [array get name]
puts "New list created from array: $list1"

#Converts a list into an associative array. DataList is a list in the format of that returned by array get. 
array set newName $list1
puts "New array from list:"
parray newName

#Check if it an array. If so, unset it
if {[array exist newName]} {
	array unset newName
	puts "New array should not exist"
	#Uncomment it to see the error
	#parray newName
} else {
	puts "It is not an array"
}

puts "List iteration"
puts "1.Index"
foreach value [array names name] {
    puts "$value: $name($value)"
}
puts "2.Index + value"
foreach {index value} [array get name] {
    puts "$index: $value"
}
puts "3. Sort order"
foreach value [lsort [array names name]] {
    puts "$value: $name($value)"
}