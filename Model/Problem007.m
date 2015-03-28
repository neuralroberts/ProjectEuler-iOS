//
//  Problem007.m
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 3/27/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//
/*
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 
 What is the 10 001st prime number?
 */


#import "Problem007.h"

@implementation Problem007

- (void)solve
{
    [super solve];
    
    int primes[10001] = {2};
    int primeCount = 0;
    int lastNumber = 2;
    
    while (primeCount <= 10000) {
        lastNumber++;
        for (int i = 0; i<=primeCount; i++) {
            if (lastNumber % primes[i] == 0) {
                primes[primeCount+1] = 0;
                break;
            } else {
                primes[primeCount+1] = lastNumber;
            }
        }
        if (primes[primeCount+1] != 0) {
            primeCount++;
        }
    }
    
    //104743
    self.answerString = [NSString stringWithFormat:@"%d",primes[10000]];
}

@end
