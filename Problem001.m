//
//  Problem001.m
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 3/20/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//

#import "Problem001.h"

@implementation Problem001

- (void)solve
{
    [super solve];
    
    self.answerString = @"Calculating answer for problem 1...";
    
    //3 5 6 9 12 15 18 20 21 24 25 27 30
    //3 2 3 3 3  3  3  2  1  3  1  2  3
    int sum = 0;
    for (int i = 1; i < 1000; i++) {
        if (i%5 == 0) {
            sum += i;
        } else if (i%3 == 0) {
            sum += i;
        }
    }
    
    self.answerString = [NSString stringWithFormat:@"%ld",(long)sum];
}
@end
