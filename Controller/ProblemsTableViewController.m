//
//  ProblemsTableViewController.m
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 3/20/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//

#import "ProblemsTableViewController.h"
#import "ProblemViewController.h"

@interface ProblemsTableViewController ()
@property (strong, nonatomic) NSArray *problems;

@end

@implementation ProblemsTableViewController

- (NSArray*)problems
{
    if (!_problems) {
        NSArray *problems = [NSArray arrayWithObjects:[Problem001 class],
                             [Problem002 class],
                             [Problem003 class],
                             [Problem004 class],
                             nil];
        _problems = problems;
    }
    return _problems;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.problems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProblemCell" forIndexPath:indexPath];
    
    cell.textLabel.text = NSStringFromClass(self.problems[indexPath.row]);
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.tag = indexPath.row;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[ProblemViewController class]]) {
        ProblemViewController *problemController = (ProblemViewController*)segue.destinationViewController;
        UITableViewCell *cell = sender; //find row of selected cell
        Class class = self.problems[cell.tag]; //get the correct problem
        problemController.problem = [[class alloc] init];
    }
}


@end
