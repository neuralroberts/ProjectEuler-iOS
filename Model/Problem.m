//
//  Problem.m
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 3/20/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//

#import "Problem.h"

@implementation Problem

- (void)setAnswerString:(NSString *)answerString
{
    _answerString = answerString;
    
    NSLog(@"%@",answerString);
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(answerDidChange)]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.delegate answerDidChange];
        });
    }
}

- (void)solve
{
    self.answerString = [NSString stringWithFormat:@"\n\nCalculating answer for %@...",NSStringFromClass(self.class)];
}
@end
