import time
import numpy

n = int(input("Enter the size of matrix: "))

start = numpy.longlong(time.time_ns())

A = numpy.random.randint(size=(n,n))
B = numpy.random.randint(size=(n,n))

multstartTime = numpy.longlong(time.time_ns())
result = numpy.dot(A,B)
end = numpy.longlong(time.time_ns())

print("Time taken just for multiplication(in nanoseconds):", end - multstartTime)
print("Time taken for initialising and multiplication(in nanoseconds):", end - start)