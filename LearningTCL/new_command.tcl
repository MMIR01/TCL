###############################################
## MMIR01. How to create new commands 
## (functions in other languages)
###############################################

proc sum {arg1 arg2} {
    set x [expr {$arg1 + $arg2}];
	#If there is no return, proc returns the result of the last command
    return $x
}

set var1 10
set var2 20
puts "The sum of $var1 + $var2 is: [sum $var1 $var2]"

#Reemplace functions
proc for {a b c} {
    puts "The for command has been replaced by a puts"
    puts "The arguments were:\n$a\n$b\n$c\n"
}

for {set i 1} {$i < 10} {incr i}

puts "Command with fixed number of arguments"
proc ex1 {arg1 arg2} {
	if {$arg1 ne ""} {
		puts "Arg1 is $arg1"
	}
	if {$arg2 ne ""} {
		puts "Arg2 is $arg2"
	}
}
puts [ex1 1 3]

puts "Command with a default value for an arguments"
proc ex2 {arg1 {arg2 2}} {
	if {$arg1 ne ""} {
		puts "Arg1 is $arg1"
	}
	if {$arg2 ne ""} {
		puts "Arg2 is $arg2"
	}
}
puts [ex2 1]

puts "Command with variable number of arguments"
proc ex3 {arg1 {arg2 2} args} {
	if {$arg1 ne ""} {
		puts "Arg1 is $arg1"
	}
	if {$arg2 ne ""} {
		puts "Arg2 is $arg2"
	}
	if {$args ne ""} {
		puts "There are more than 2 args: $args"
	}
}
puts [ex3 1]
puts [ex3 1 3]
puts [ex3 1 2 3 4 5]