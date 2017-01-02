decl
	integer file;
	integer num;
	integer status;
	string txt;
enddecl
integer main()
{
	//breakpoint;
	print("Creating");
	status = Create("new2.dat");
	print(status);
	if(status==-1) then
		print("Error");
	endif;
	
	print("Opening");
	file = Open("new2.dat");
	print(file);
	if(file==-1) then
		print("Error");
	endif;
	
	print("Writing");
	num = 100;
	while(num<200) do
		status = Write(file,num);
		if(status==-1) then
			print("Error");
		endif;
		num = num + 1;
	endwhile;
	
	print("Closing");
	status = Close(file);
	print(status);
	if(status==-1) then
		print("Error");
	endif;
	
	print("Opening");
	file = Open("new2.dat");
	print(file);
	if(file==-1) then
		print("Error");
	endif;
	
	print("Seeking");
	status = Seek(file,50);
	print(status);
	if(status==-1) then
		print("Error");
	endif;
	
	status = 0;
	while(status==0) do
		status = Read(file, txt);
		print(txt);
		if(txt=="") then
			break;
		endif;
	endwhile;
	
	print("Closing");
	status = Close(file);
	print(status);
	if(status==-1) then
		print("Error");
	endif;
	
	return 0;
}