decl
	integer evenFile;
	integer oddFile;
	integer writeFile;
	integer num;
	integer count;
	integer status1;
	integer status2;
	integer status3;
enddecl
integer main(){
	print("Creating");
	status1 = Create("odd.dat");
	print(status1);
	if(status1==-1) then
		print("Error");
	endif;
	
	print("Opening Odd");
	writeFile = Open("odd.dat");
	print(writeFile);
	if(writeFile==-1) then
		print("Error");
	endif;
	
	status1 = 0;
	status2 = 0;
	count = 0;
	
	num = 1;
	
	while(status1 == 0&&num<512) do
		status1 = Write(writeFile,num); 
		num = num + 2;
	endwhile;
	
	print("Closing odd");
	status1 = Close(writeFile);
	print(status1);
	if(status1==-1) then
		print("Error");
	endif;
	
	return 0;
}