integer main()
{
	integer pid;
	integer selfPid;
	integer parPid;
	breakpoint;
	print ("Before Fork");
	pid = Fork();
//	pid = Fork();
	breakpoint;
	if(pid!=-2) then 
		print("waiting");
		selfPid = Wait(pid);
		print(selfPid);
		selfPid=Getpid();
		parPid=Getppid();
		print("selfPid");
		print(selfPid);
		print("parPid");
		print(parPid);
		print("took your");
		print("time");
	endif;
	if(pid==-2) then
		print("Taking my ");
		print("Time");
		selfPid=Getpid();
		parPid=Getppid();
		print("selfPid");
		print(selfPid);
		print("parPid");
		print(parPid);
		//selfPid = Signal();
		//selfPid = Wait(parPid);
		//print(parPid);
	endif;
	return 0;
}