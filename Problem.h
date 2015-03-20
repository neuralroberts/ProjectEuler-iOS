//
//  Problem.h
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 3/20/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//

/*
abstract class for problems
*/

#import <Foundation/Foundation.h>

@protocol ProblemDelegate <NSObject>
- (void)answerDidChange;
@end

@interface Problem : NSObject

@property (strong, nonatomic) NSString *answerString;
@property (weak, nonatomic) id<ProblemDelegate> delegate;

- (void)solve;

@end
