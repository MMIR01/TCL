###############################################
## MMIR01. Example of a simple database by 
## using dictionaries
###############################################

proc addname {db firstName lastName} {
	#Argument by reference
    upvar 1 $db dbvar
	dict incr dbvar ID
	set idvar [dict get $dbvar ID]
	
	#Debug
	#puts "ID number: $idvar"
	 
	# Add two dictionaries 
	#{key, {key,value}} = {id, {firstName, first}} + {id, {lastName, last}}
	# Op1
	#dict set dbvar $idvar [dict create firstName $firstName lastName $lastName]  
	# Op2
	#dict lappend dbvar $idvar [dict create firstName $firstName lastName $lastName]
	# Op3
	dict set dbvar $idvar firstName $firstName
	dict set dbvar $idvar lastName $lastName
	
}

proc dbprint {db} {
	upvar 1 $db dbvar
	puts "Printing nested: Key > (key,value)"
	dict for {i2 v2} $dbvar {
		puts "$i2 > $v2"
	}
	
	puts "Printing database order by id:"
	set printed_db [dict remove $dbvar ID]
	#Elements in the dictionary are given in the same order they were set
	dict for {id values} $printed_db {
		dict with values {
			puts "$id. $firstName $lastName"
			# Create a tmp dict to be used in the next printed_db
			dict set tmpdict $lastName $id
		}
	}
	
	
	puts "Printing database order by last name:"
	foreach last [lsort [dict keys $tmpdict]] {
		set idprint1 [dict get $tmpdict $last]
		set values [dict get $dbvar $idprint1]
		foreach first [dict get $values firstName] {
			puts "$last, $first" 
		}
	}
}

# Initialise the dict
dict set football_players ID 0
# Note: we cannot create an empty dict

# Add the users to the db
addname football_players Leo Messi
addname football_players Cristiano Ronaldo
addname football_players Gareth Bale
addname football_players Paul Pogba
addname football_players Alexis Sanchez
addname football_players David Silva

#Debug
#puts "Size of the database"
#puts [dict size $football_players]

puts "Printing the database:"
dbprint football_players