#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <ctime>
#define N 512

using namespace std;
 
void sMatMultiply(int matrix1[][N],
              int matrix2[][N],
              int resultMat[][N])
{
    int i = 0, j = 0, k = 0;
    for (j = 0; j < N; j++) {
        for (i = 0; i < N; i++) {
            resultMat[i][j] = 0;
            for (k = 0; k < N; k++)
                resultMat[i][j] += matrix1[i][k] * matrix2[k][j];
        }
    }
}



int main()
{
    int resultMat[N][N];
    int matrix1[N][N];
    int matrix2[N][N];
    
    for (int i = 0; i < N; i++) 
    {
        for (int j = 0; j < N; j++) 
        {
            
            matrix1[i][j] = rand()%10;
            matrix2[i][j] = rand()%10;
        }
    }
    timespec start, end;
    clock_gettime(CLOCK_REALTIME, &start);

    sMatMultiply(matrix1, matrix2, resultMat);
    clock_gettime(CLOCK_REALTIME, &end);
    long long seconds = end.tv_sec - start.tv_sec;
    long long nanoseconds = end.tv_nsec - start.tv_nsec;
    long double elapsed = seconds + nanoseconds*(long double)1e-9;
    

    // cout << "Result matrix is \n";
    // for (int i = 0; i < N; i++)
    // {
    //     for (int j = 0; j < N; j++)
    //         cout << resultMat[i][j] << " ";
    //     cout << "\n";
    // }

    cout<<"\nTime taken just for multiplication: "<<elapsed<<" seconds\n";
    return 0;
}
