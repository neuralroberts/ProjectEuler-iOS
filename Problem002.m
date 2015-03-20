//
//  Problem002.m
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 3/20/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//

#import "Problem002.h"

@implementation Problem002

- (void)solve
{
    [super solve];
    
    self.answerString = @"Calculating answer for problem 2...";
    
    int sum = 0;
    int currentTerm = 1;
    int lastTerm = 1;
    int tempTerm = 1;
    while (currentTerm < 4000000)
    {
        tempTerm = currentTerm;
        currentTerm += lastTerm;
        lastTerm = tempTerm;
        if (currentTerm % 2 == 0) sum += currentTerm;
    }
    
    self.answerString = [NSString stringWithFormat:@"%d",sum];
}

@end
