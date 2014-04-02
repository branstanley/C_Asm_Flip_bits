/* COMP 2476 Lab Mar 18 - 25
*
*/

#include <stdio.h>

int modding_function(int in);

int main ( int argc, char* argv[]){
	int a = 1, b;
	int n;
	printf ( " A sequence of integers: \n");
	printf ( " %d\n", a);
	for (n=1; n<10; n++){
	    b=f(a);
	    a = a + b;
	    printf ( "f(last a )= %d = %08x, new a= %d = %08x \n", b, b, a, a);
	}
	return (1);
}

int f (int arg){
	int j;
	j = (arg+123)/3;
	return modding_function(j);
}

