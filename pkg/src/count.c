#include<stdio.h>
#include<string.h>

// This functions counts the frequency of occurrence of each pattern by taking a single dimensional array as input and outputs the frequency and pattern in an order. 

int comparevectors(int vec1[],int vec2[],int nvec)
{
	int i;
	for (i=0;i<nvec;i++)
	{
	if (vec1[i]!=vec2[i]) {return(0);};
	}
return(1);	
}

void updateD(int vec[],int nvec, int *D, int *nrowD, int *freq) //this searches temp in D and updates D and freq 
{
 int i=0,j=0, temp[nvec],maxcheck=nrowD[0];
for (i=0;i<maxcheck;i++)
	{
		for (j=0;j<nvec;j++) // send appropriate elements to a vector
		{
		temp[j]=D[i*nvec+j];
		}
	if(comparevectors(vec,temp,nvec)==1) // if vectors are equal
		{
		freq[i]++; //update the frequency
		return; //finish searching
		}	
// if vectors are different go and update temp 
	}
// if none were equal
for (j=0;j<nvec;j++)
	{
	D[maxcheck*nvec+j]=vec[j]; // add a row in D
	}
freq[maxcheck]=1; //give frequency one to the new row
nrowD[0]++; // update nrowD
}

void RupdateD(int *vec,int *nvec, int *D, int *nrowD, int *freq) //this searches temp in D and updates D and freq 
{
	updateD(vec,*nvec, D, nrowD, freq);
}
void count( int S[], int Pat_L, int N_Iter, int *D, int *nrowD,int *freq)
{
	int tempvec[Pat_L],i=0,j=0,l=Pat_L;
	for (i=0; i<Pat_L;i++) // initialize the first row of D
		{
		D[i]=S[i];
		}
	nrowD[0]=1; //intitalize nrowD
	freq[0]=1; //initialize frequency
	for (l=1;l<N_Iter;l++)
		{
			for (i=0;i<Pat_L;i++) /*get a row*/
				{
				tempvec[i]=S[l*Pat_L+i];
				}
		updateD(tempvec,Pat_L,D,nrowD,freq); 
		}
}



void Rcount( int *S, int *Pat_L, int *N_Iter, int *D, int *nrowD,int *freq)
	{
		count(S, *Pat_L, *N_Iter, D, nrowD,freq);
	}

