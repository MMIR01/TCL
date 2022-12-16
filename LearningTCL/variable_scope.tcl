###############################################
## MMIR01. Variable Scopes
## upvar
###############################################

#In this example, myvar will refer to variable
#We are simulating pass-by-reference
proc SetPositive {variable value } {
    upvar $variable myvar
    if {$value < 0} {
        set myvar [expr {-$value}]
    } else {
        set myvar $value
    }
	#For this example, return is not necessary
    return $myvar
}

SetPositive x 2
SetPositive y -5

puts "X : $x    Y: $y\n"

proc ex2 {} {
    upvar 1 x a                     ;# Tie variable x 1 level up to a
    puts "A: $a"
	puts "Setting A, therefore setting X"
    set a 3
	puts "New value of A: $a"	
}

ex2
puts "X : $x    Y: $y\n"

puts "Testing upvar in two levels"

proc level2 {} {
	upvar 2 x z
	set z 10
}

proc level1 {} {	 
	level2
}

level1
puts "New value X: $x"