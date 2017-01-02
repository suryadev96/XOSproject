integer main()
{
	integer childpid;
	integer retval;
	breakpoint;
	childpid = Fork();
	if (childpid == -1) then
		print("ForkFail");
	endif;
	if(childpid == -2) then
		retval = Exec("fTest.xsm");
		if (retval == -1) then
			print("ExecFail");
		endif;
		print("Child");
		childpid = Getpid();
		print(childpid);
	else
		while(childpid != -1) do
			//print("ANS");
			print(childpid);
		endwhile;
	endif;
	return 0;
}