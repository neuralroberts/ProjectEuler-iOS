//
//  Problem003.m
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 3/20/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//

/*
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143 ?
 */

#import "Problem003.h"

@implementation Problem003

- (void)solve
{
    [super solve];
    
    // 2 3 5 7 11 13 17 19 23 29...
    // ( ( ( 13195 / 5 ) / 7 ) / 13 ) / 29 = 1
    
//    long composite = 13195;
    long composite = 600851475143;
//    long composite = 10347894987;
    long factor = 1;
    while (composite > 1 ) {
        factor++;
        if (composite % factor == 0) {
            composite /= factor;
            factor--;
        }
    }
    
    self.answerString = [NSString stringWithFormat:@"%ld",factor];
}

@end
