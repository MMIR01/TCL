###############################################
## MMIR01. Example of a simple database by 
## using arrays
###############################################

proc addname {db firstName lastName} {
    upvar $db name

    # Create a new ID 
    incr name(ID)
    set id $name(ID)

    set name($id,firstName) $firstName   
    set name($id,lastName)  $lastName    
                                 
}

proc dbprint {db} {
    upvar $db name
	
	#Get the index of the array
	#Filter by lastName o firsName to do not have replicated name
	set idlist {}
	foreach index [array names name "*,lastName"] {
		# Get the id by using regexp
		regexp {^[^,]+} $index id
		if {$id != "ID"} {
			#It will print the list in an unsorted way
			puts "$id. $name($id,firstName) $name($id,lastName)"
			#Sort the result in a temp array (order by lastname)
			#We have to create a temp array > index: last name, value: id
			set last $name($index)
			set tmp($last) $id
			#Sort the result in a temp array (order by id)
			lappend idlist $id
		}
	}
	
	puts "Printing database order by last name"
	foreach last [lsort [array names tmp]] {
		set idprint1 $tmp($last)
		puts "$name($idprint1,lastName), $name($idprint1,firstName)"
	}

	puts "Printing database order by id"
	set idsort [lsort $idlist]
	foreach idprint2 $idsort {
		puts "$idprint2. $name($idprint2,firstName) $name($idprint2,lastName)"
	}
}

# Initialise the array 
set football_players(ID) 0

# Add the names
addname football_players Leo Messi
addname football_players Cristiano Ronaldo
addname football_players Gareth Bale
addname football_players Paul Pogba
addname football_players Alexis Sanchez
addname football_players David Silva

#Debug
#puts "Size of the database"
#puts [array size football_players]

puts "Printing the database:"
dbprint football_players