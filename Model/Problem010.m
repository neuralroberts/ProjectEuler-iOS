//
//  Problem010.m
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 4/20/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//
/*
 The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
 
 Find the sum of all the primes below two million.
 */

#import "Problem010.h"

@implementation Problem010

- (void)solve
{
    [super solve];
    
    long limit = 2000000;
    long crosslimit = (long)floor(sqrt(limit));
    bool *sieve;
    sieve = malloc((limit+1) * sizeof *sieve);
    
    if(sieve == NULL) {
        self.answerString = @"not enough memory";
        return;
    }
    
    for (long n = 4; n < limit; n+=2) sieve[n] = YES;
    for (long n = 3; n < crosslimit; n+=2) {
        if (!sieve[n]) {
            for (long m = n*n; m < limit; m+=2*n) {
                sieve[m] = YES;
            }
        }
    }
    
    unsigned long sum = 0;
    for (long n = 2; n < limit; n++) {
        if (!sieve[n]) sum += n;
    }
    
    self.answerString = [NSString stringWithFormat:@"%ld",sum];
}



@end
