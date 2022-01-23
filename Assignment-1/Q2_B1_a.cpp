#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <ctime>
#define N 256

using namespace std;
 
void sMatMultiply(double mat1[][N],
              double mat2[][N],
              double res[][N])
{
    int i, j, k;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            res[i][j] = 0;
            for (k = 0; k < N; k++)
                res[i][j] += mat1[i][k] * mat2[k][j];
        }
    }
}



int main()
{
    double resultMat[N][N];
    double matrix1[N][N];
    double matrix2[N][N];
    
    for (int i = 0; i < N; i++) 
    {
        for (int j = 0; j < N; j++) 
        {
            
            matrix1[i][j] = (double) rand()/RAND_MAX;
            matrix2[i][j] = (double) rand()/RAND_MAX;
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