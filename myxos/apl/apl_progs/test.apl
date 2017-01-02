integer main()
{
	integer pid;
	print ("Write Even");
	pid = Fork();
//	if(pid!=-2) then 
//		pid = Wait(pid);
//	endif;
	if(pid==-2) then
		pid = Exec("evenW.xsm");
		if(pid==-1) then
			print("command");
			print("not Found");
			Exit();
		endif;
	endif;
	pid = Fork();
	if(pid!=-2) then 
		pid = Wait(pid);
	endif;
	if(pid==-2) then
		pid = Exec("oddW.xsm");
		if(pid==-1) then
			print("command");
			print("not Found");
			Exit();
		endif;
	endif;
	pid = Fork();
	if(pid!=-2) then 
		pid = Wait(pid);
	endif;
	if(pid==-2) then
		pid = Exec("Merge.xsm");
		if(pid==-1) then
			print("command");
			print("not Found");
			Exit();
		endif;
	endif;
	return 0;
}