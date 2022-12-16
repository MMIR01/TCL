###############################################
## MMIR01. Strings
## How to work with paths by using TCL
###############################################

set fullpath "/Directory1/Subdirectory1/Subdirectory2/file1.ext"
set relativepath "Subdirectory1/Subdirectory2/file2.ext"
set filename_path "file3.txt"

set paths [list $fullpath $relativepath $filename_path]

foreach path $paths {
	set first [string first "/" $path]

	#Report if path is absolute or relative

	if {$first != 0} {
		puts "$path is a relative path"
	} else {
		puts "$path is an absolute path"
	}
	
	#Get the filename
	
	set last [string last "/" $path]
	if {$last == -1} {
		set filename $path
	} else {
		set filename [string range $path [incr last] end]
	}
	puts "Filename: $filename"
}
