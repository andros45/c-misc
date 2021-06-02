#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int r=0;
int illc=0;

int num[8];

// Allowed signs in ASCII is:
// 48-57 (0-9)
// 65-90 (A-Z)
// 97-122 (a-z)

// Signs we want to avoid are:
// 48 = 0
// 49 = 1
// 79 = O
// 108 = l



int main (int argc, char * argv[]) {
	srand(time(NULL));

	// Generate number between 50 and 122
	// Iterate until we have 8 approved numbers
	
	for(int c=0; c<8000; c++) {
		r = ((rand() % (((122) + 1) - (50))) + (50));
		if ((r == 79 || r == 108) || (r > 57 && r < 65) || (r > 90 && r < 97)) {
			illc++;
			if (c != 0)
				c--;
		} else
			printf("%c",r);
	}

	//printf("\n\nNumber of illegal chars: %d",illc);

	return 0;
}
