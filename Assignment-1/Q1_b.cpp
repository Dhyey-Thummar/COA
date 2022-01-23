#include <stdio.h>
#include <ctime>
#include <iostream>
#include <cstdlib>
using namespace std;

std::ostream&
operator<<( std::ostream& dest, __int128_t value )
{
    std::ostream::sentry s( dest );
    if ( s ) {
        __uint128_t tmp = value < 0 ? -value : value;
        char buffer[ 256 ];
        char* d = std::end( buffer );
        do
        {
            -- d;
            *d = "0123456789"[ tmp % 10 ];
            tmp /= 10;
        } while ( tmp != 0 );
        if ( value < 0 ) {
            -- d;
            *d = '-';
        }
        int len = std::end( buffer ) - d;
        if ( dest.rdbuf()->sputn( d, len ) != len ) {
            dest.setstate( std::ios_base::badbit );
        }
    }
    return dest;
}

int main()
{
    __int128 n1 = 0, n2 = 1, n3;
    int i, number;
    cout << "Enter the number of terms of series : ";
    cin >> number;
    timespec start, end;
    clock_gettime(CLOCK_REALTIME, &start);

    for (i = 2; i < number+1; ++i)
    {
        n3 = n1 + n2;
        cout << n3 << endl;
        n1 = n2;
        n2 = n3;
    }
    // cout << "\nFibonnaci number is : " << n3 << endl;
    clock_gettime(CLOCK_REALTIME, &end);
    long long seconds = end.tv_sec - start.tv_sec;
    long long nanoseconds = end.tv_nsec - start.tv_nsec;
    long double elapsed = seconds + nanoseconds*(long double)1e-9;
    cout<<"\nTime taken: "<<elapsed<<" seconds\n";
    return 0;
}