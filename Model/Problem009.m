//
//  Problem009.m
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 4/6/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//
/*
 A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
 
 a2 + b2 = c2
 For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
 
 There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 Find the product abc.
 */

#import "Problem009.h"

@implementation Problem009

- (void)solve
{
    [super solve];
    int abc = 0;
    int c = 0;
    
    while (abc == 0) {
        c++;
        for (int b=1; b<c; b++) {
            int a = 1000 - b - c;
            if (a > 0 && a < b) {
                if (pow(a,2)+pow(b,2)==pow(c,2)) {
                    abc = a*b*c;
                    self.answerString = [NSString stringWithFormat:
                                         @"%d^2 + %d^2 = %d^2\n"
                                         @"%d + %d + %d = 1000\n"
                                         @"%d * %d * %d = %d",a,b,c,a,b,c,a,b,c,abc];
                    break;
                }
            }
        }
    }
}

@end
