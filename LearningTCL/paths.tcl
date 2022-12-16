####################################################
## MMIR01. Paths manipulation using 
## file command.
## More info: 
## https://www.tcl.tk/man/tcl8.5/tutorial/Tcl25.html
####################################################

set fullpath "/Directory1/Subdirectory1/Subdirectory2/file1.ext"
set filename_path "file3.txt"

puts "Directory name:"
puts [file dirname $fullpath]
puts "Filename:"
set filename [file tail $fullpath]
puts "$filename"
puts "Extension:"
puts [file extension $filename]
puts "Printing path native to the platform:"
puts [file nativename $fullpath]