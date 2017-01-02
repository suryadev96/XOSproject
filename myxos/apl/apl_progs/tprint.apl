integer main()
{
	integer pid;
	pid = Fork();
	if (pid == -1) then
		print("ERR1");
	else
		print("F1");
	endif;
	pid = Fork();
	if (pid == -1) then
		print("ERR2");
	else
		print("F2");
	endif;
	pid = Fork();
	if (pid == -1) then
		print("ERR3");
	else
		print("F3");
	endif;
	pid = Fork();
	if (pid == -1) then
		print("ERR4");
	else
		print("F4");
	endif;	
	pid = Fork();
	if (pid == -1) then
		print("ERR5");
	else
		print("F5");
	endif;	
	pid = Getpid();
	while(pid==1) do
		pid=1;
	endwhile;
	pid = Exec("print.xsm");
	
	return 0;
}