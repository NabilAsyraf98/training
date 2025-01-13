#!/usr/bin/env nextflow
def fib(int n) {
    return n < 2 ? 1 : fib(n - 1) + fib(n - 2)
}

assert fib(10)==89
print(fib(10))

// can be shortened to println x > 10 ? "Hello":"Goodbye"
workflow {
    
}       