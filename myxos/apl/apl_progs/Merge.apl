decl
	integer evenFile;
	integer oddFile;
	integer writeFile;
	string num;
	integer count;
	integer status1;
	integer status2;
	integer status3;
enddecl
integer main(){
	print("Creating");
	status1 = Create("merge2.dat");
	print(status1);
	if(status1==-1) then
		print("Error");
	endif;
	
	print("Opening Even");
	evenFile = Open("even.dat");
	print(evenFile);
	if(evenFile==-1) then
		print("Error");
	endif;
	
	print("Opening Odd");
	oddFile = Open("odd.dat");
	print(oddFile);
	if(oddFile==-1) then
		print("Error");
	endif;
	
	print("Opening merge");
	writeFile = Open("merge2.dat");
	print(writeFile);
	if(writeFile==-1) then
		print("Error");
	endif;
	
	status1 = 0;
	status2 = 0;
	count = 0;
	// while(status1==0 || status2==0) do
		// if (status1==0) then
			// status1 = Read(evenFile, num);
			// status3 = Write(writeFile,num);
			// if (status3==-1) then
				// break;
			// endif;
		// endif;
		
		// if (status2==0) then
			// status2 = Read(oddFile, num);
			// status3 = Write(writeFile,num);
			// if (status3==-1) then
				// break;
			// endif;
		// endif;
		// count = count+2;
	// endwhile;
	
	status1 = Read(evenFile, num);
	print(num);
	
	while(status1 == 0) do
		status1 = Write(writeFile,num); 
		status1 = Read(oddFile,num); 
		status1 = Write(writeFile,num); 
		status1 = Read(evenFile,num);

	endwhile;
	
	print("Closing Even");
	status1 = Close(evenFile);
	print(status1);
	if(status1==-1) then
		print("Error");
	endif;
	
	print("Closing Odd");
	status1 = Close(oddFile);
	print(status1);
	if(status1==-1) then
		print("Error");
	endif;
	
	print("Closing Merge");
	status1 = Close(writeFile);
	print(status1);
	if(status1==-1) then
		print("Error");
	endif;
	
	print(count);
	
	return 0;
}