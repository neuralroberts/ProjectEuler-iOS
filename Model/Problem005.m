//
//  Problem005.m
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 3/25/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//

/*
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 
 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 */


#import "Problem005.h"

@implementation Problem005

- (void)solve
{
    [super solve];
    
    NSTimeInterval startTime = [NSDate timeIntervalSinceReferenceDate];
    
    long answer = 0;
    long candidate = 20;
    
    while (answer == 0 && candidate > 0) {
        //range(1,10) all have multiples in range(11,20), so only need to check 11 to 20
        //all candidates are multiples of 20, so we can skip checking 20 also
        for (int i = 19; i >= 11; i--) {
            if (candidate % i == 0) {
                answer = candidate;
            } else {
                answer = 0;
                break;
            }
        }
        //all candidates must be multiples of 20, so we can iterate by 20 to check fewer numbers
        candidate+=20;
    }
    
    NSTimeInterval elapsed = [NSDate timeIntervalSinceReferenceDate] - startTime;
    NSLog(@"%f seconds elapsed",elapsed);
    self.answerString = [NSString stringWithFormat:@"%ld",answer];
}

@end
