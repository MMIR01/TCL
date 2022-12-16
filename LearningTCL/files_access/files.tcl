###############################################
## MMIR01. File access
###############################################

puts "Creating a new file..."
set fileA [open "fileA.txt" w]
puts "Typing in the file..."
set text "New file created by TCL"
puts $fileA $text
set text "Second line of the file"
puts $fileA $text
puts "Closing the file..."
flush $fileA
close $fileA

puts "Reading from the file:"
set fileA [open "fileA.txt" r]

while { [gets $fileA line] >= 0 } {
    puts $line
}
flush $fileA
close $fileA

puts "Deleting the file..."
#You can use the absoulte path instead
#set pathname "[pwd]/fileA.txt"
#file delete $pathname
file delete "fileA.txt"