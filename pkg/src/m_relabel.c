#include<stdio.h>
#include<string.h>

int *P1;  				// Holds the address of the 1st element of relabelled pattern.

// Compares an element in an array of length L and returns the location of the element.
int compare(int T[], int m, int L)
{
	int t;

	for (t = 0; t< L; t++)
	{
		if (T[t] == m)
		return t;
	}
	return -1;
}

// This function uniquely relabels an array of given length L and passes the address of the 1st element of the array to the global variable P1
void Relabel(int A[], int L)
{
	int T[L];
	int N_A[L];
	int i,m,n;
	int j = 0;

	for (i=0; i < L; i++)
	{
		T[i] =0;
		N_A[L] = 0;
	}

	for (i=0; i < L; i++)
	{
		m = A[i];

		if (compare( T, m, L) != -1)
		{
			n = compare(T, m, L);
			N_A[i] = n+1;
		}
		else
		{
			T[j] = m;
			N_A[i] = j+1;
			j++;
		}
	}

	for(i=0; i<L; i++)
	{
		T[i] = 0;
	}
	P1 = N_A;
}

/* This function relabels an entire array consisting of many iterations of MCMC simulation. It 1st stores the 1st iteration in a
temp array and then relabels it passing the answer into F_A.*/

void M_Relabel( int S[], int Pat_L, int N_Iter, int *result)
{
	int F_A[Pat_L*N_Iter];
	int temp[Pat_L];
	int b,i;
	int a = 0;

	// Initialising the array F_A and temp array
		for (i=0; i < Pat_L*N_Iter; i++)
		{
			F_A[i] =0;
		}

		for (i=0; i < Pat_L; i++)
		{
				temp[i] =0;
		}

	while( a < ((Pat_L*N_Iter)-1))
	{
		for(b = 0; b < Pat_L; b++)
		{
			temp[b] = S[a+b];
		}

		Relabel(temp, Pat_L);
		for(b = 0; b < Pat_L; b++)
		{
			F_A[a+b] = P1[b];
		}

		a = a+Pat_L;
	}

	for(a=0; a<(Pat_L*N_Iter); a++)
	{
		result[a] = F_A[a];
	}
}

// This function is being called by R and serves as an interface between C and R.
void RM_Relabel( int *S, int *Pat_L, int *N_Iter, int *result)
{
	M_Relabel(S, *Pat_L, *N_Iter, result);
}

