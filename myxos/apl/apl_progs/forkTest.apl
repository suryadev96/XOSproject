integer main()
{
	integer pid;
	print ("Before Fork");
	pid = Fork();
	print ("After Fork1");
	if(pid!=-2) then
		print("Parent");
	else
		print("Child");
	endif;
	print ("After Fork3");
	return 0;
}