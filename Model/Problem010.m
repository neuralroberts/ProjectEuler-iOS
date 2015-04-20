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
    
    unsigned long sum = 0;
    
    for (unsigned long n = 1; n < 2000000; n++) {
        if ([self isPrime:n]) {
            sum += n;
        }
    }
    
    self.answerString = [NSString stringWithFormat:@"%ld",sum];
}

- (BOOL)isPrime:(long)n
{
    if (n < 9) {
        if (n == 2 || n == 3 || n == 5 || n == 7) return YES;
        else return NO;
    }
    if (n % 2 == 0) return NO;
    if (n % 3 == 0) return NO;
    else {
        unsigned long rootn = (unsigned long)floor(sqrt(n));
        unsigned long factor = 5;
        while (factor <= rootn) {
            //from problem 7 overview: All primes greater than 3 can be written in the form 6k+/-1.
            if (n % factor == 0) return NO;
            if (n % (factor+2) == 0) return NO;
            factor += 6;
        }
    }
    return YES;
}

@end
