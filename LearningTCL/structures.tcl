###############################################
## MMIR01. Structures in TCL
###############################################

puts "<IF-ELSE>"
set var1 4
#First option
if {$var1 == 2} {puts "var1 is 2"} elseif {$var1 == 3} {puts "var1 is 3"} else {puts "var1 is other value"}
#Second option
if {$var1 == 4} {
	puts "var1 is 4" 
} elseif {$var1 == 5} {
	puts "var1 is 5"
} else {
	puts "var1 is other value"
}

puts "<SWITCH>"
set s1 "FIVE"
set s2 FIVE

switch $s1 {
	"$s2" { ; #This comparison does not work
		puts "s1 is $s2"
	}
	"TWO" {
		puts "s1 is TWO"
	}
	"THREE" {
		puts "s1 is THREE"
	}
	default {
		puts "NO MATCH"
	}
}

puts "<WHILE>"
set x 0
#endless loop
#while "$x < 5" {
#    set x [expr {$x + 1}]
#    puts "x is $x"
#}
while {$x < 5} {
    incr x
	#Equial to
	#set x [expr {$x + 1}]
    puts "while loop: x is $x"
}

puts "<FOR>" 
for {set i 0} {$i < 4} {incr i} {
	puts "for loop: i is $i"
}