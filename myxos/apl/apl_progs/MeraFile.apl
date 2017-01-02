integer main()
{
	integer status1, status2;
	status1 = Create("MyFile.dat");
	print(status1);
	status2 = Delete("MyFile.dat");
	print(status2);
	return 0;
}