decl
	integer pid;
	integer num;
enddecl
integer main(){
	print("Before Fork");
	pid = Fork();
	if(pid!=-2) then
		num = Exec("even.xsm");
		if(num!=0) then
			print("Error");
		endif;
	endif;
	print(1);
	print(3);
	print(5);
	print(7);
	print(9);
	print(11);
	print(13);
	print(15);
	print(17);
	print(19);
	return 0;
}