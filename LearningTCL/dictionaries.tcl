###############################################
## MMIR01. Dictionaries
###############################################

proc print_dict {db} {
	#It is not necessary to use upvar like with arrays

	puts "Keys: "
	puts [dict keys $db]
	puts "Value: "
	puts [dict values $db]
	#Iteration1
	puts "Printing Key > value"
	foreach item [dict keys $db] {
		#Get a single value from a key
		set values [dict get $db $item]
		puts "$item > $values"
	}
	#Iteration2
	puts "Printing Key > value"
	foreach {i v} $db {
		puts "$i > $v"
	}
	#Iteration3. dict for = foreach for dictionaries
	puts "Printing Key > value"
	dict for {i2 v2} $db {
		puts "$i2 > $v2"
	}
}

proc print_dict_nested {db} {

	puts "Printing nested: Key > (key,value)"
	dict for {i2 v2} $db {
		puts "$i2 > $v2"
	}
	
	puts "Printing nested dicts with for and with"
	dict for {i v} $db {
		puts "Dict: $i"
		dict with v {
		#We can use dict with because we know the name of the keys
			puts "$name > $version"
		}
	}
}

#Creating single dictionary: key-value
dict set single one 1
dict set single two 2
dict set single theree 3
puts $single

#Another way
set single2 [dict create a A b B c C]
puts $single2

puts "Value of the dictionary"
puts [dict size $single2]

print_dict $single2

#Creating nested dictionaries
dict set app 1 name A1
dict set app 1 version 2.0
dict set app 2 name B1
dict set app 2 version 1.1

dict set app2 id1 [dict create name S1 version 3.0]
dict set app2 id2 [dict create name T1 version 3.2]

print_dict_nested $app
print_dict_nested $app2