//
//  ProblemViewController.m
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 3/20/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//

#import "ProblemViewController.h"

@interface ProblemViewController ()

@property (strong, nonatomic) IBOutlet UILabel *answerLabel;

@end

@implementation ProblemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = NSStringFromClass([self.problem class]);
    
    self.problem.delegate = self;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self.problem solve];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (void)answerDidChange
{
    self.answerLabel.text = self.problem.answerString;
}

@end
