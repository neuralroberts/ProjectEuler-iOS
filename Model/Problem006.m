//
//  Problem006.m
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 3/26/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//

/*
 The sum of the squares of the first ten natural numbers is,
 
 12 + 22 + ... + 102 = 385
 The square of the sum of the first ten natural numbers is,
 
 (1 + 2 + ... + 10)2 = 552 = 3025
 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
 
 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 */



#import "Problem006.h"

@implementation Problem006

- (void)solve
{
    [super solve];
    
    /*
     1^2+2^2+3^3 = 14
     (1+2+3)^2 = (1*1 + 1*2 + 1*3 + 2*1 + 2*2 + 2*3 + 3*1 + 3*2 + 3*3) = 36
     36 = (1*2 + 1*3 + 2*1 + 2*3 + 3*1 + 3*2) + (1*1 + 2*2 + 3*3)
     difference = (1*2 + 1*3 + 2*1 + 2*3 + 3*1 + 3*2) = 22
     difference = 1*5 + 2*4 + 3*3
     
     difference(n=4) = 1*2 + 1*3 + 1*4 + 2*1 + 2*3 + 2*4 + 3*1 + 3*2 + 3*4 + 4*1 + 4*2 + 4*3
     difference(n=4) = 1*9 + 2*8 + 3*7 + 4*6
     
     difference(n=2) = 1*2 + 2*1
     */
    
//    brute force method
//    int sum = 0;
//    
//    for (int i = 1; i <= 100; i++) {
//        for (int j = 1; j <= 100; j++) {
//            if (i != j) {
//                sum += i*j;
//            }
//        }
//    }

    //difference between sum of squares and square of sum for 1 to n is
    //n*j + (n-1)*(j+1) .... + 1*(j+n-1)
    //where j is the sum of 1 to n-1
    int sum = 0;
    int n = 100;
    int j = n * (n - 1) / 2;
    for (int i = n; i > 0; i--) {
        sum += i*j;
        j++;
    }
    
    //answer is 25164150
    self.answerString = [NSString stringWithFormat:@"%d",sum];
}

@end
