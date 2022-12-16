How to create the package index:
-Open CMD:
tclsh
% cd [pwd]
% pkg_mkIndex p1 *.tcl
% pkg_mkIndex p2 *.tcl
% exit
-Alternative. Execute setup.tcl
-For more info:
https://www.tutorialspoint.com/tcl-tk/tcl_packages.htm

This example consist on:
1. Pack1 > file which contains 2 functions
2. Pack1v2 > Pack1 updated
3. Main > main file which calls functions of the pack1 and pack2
4. Pack2 > it is another package placed out of this folder (see p2 folder)
