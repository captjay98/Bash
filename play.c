#include <stdio.h>
#include <string.h>
int main()
{
	const char myname[] = "Jamal";
	char name[6];
	int age;
	int my_age = 23;

	puts("Enter your name");
	fgets(name, 7, stdin);
	puts("How old are you");
	scanf("%i", &age);

	//printf("my name is %s \n", myname);
	//printf("I am %i years old \n", age);

	if (strncmp(name, "sarki", 6) == 1)
	{	if (age > my_age)
		{
			printf("%s, you're %i years older than %s You should start behaving your age", name, age - my_age, myname);
		}
	}
	
	if (strncmp(name, "bsal", 5) == 1)
	{	if (age > my_age)
		{
			printf("%s, you're %.1f months older than %s You should stop being stupid", name, (float)age - (float)my_age, myname);
		}
	}
	return 0;
}
