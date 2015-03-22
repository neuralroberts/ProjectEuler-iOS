//
//  ProblemViewController.h
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 3/20/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Problem.h"
#import "Problem001.h"
#import "Problem002.h"
#import "Problem003.h"

@interface ProblemViewController : UIViewController <ProblemDelegate>

@property (strong, nonatomic) Problem *problem;

- (void)answerDidChange;

@end
