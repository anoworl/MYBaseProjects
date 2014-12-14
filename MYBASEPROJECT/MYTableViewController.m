//
//  MYTableViewController.m
//  MYBASEPROJECT
//
//  Created by 徳永清詩 on 2014/12/14.
//  Copyright (c) 2014年 kiyoshi.tokunaga. All rights reserved.
//

#import "MYTableViewController.h"

@interface MYTableViewController ()

@end

@implementation MYTableViewController
@synthesize tableView;
@synthesize tableData;
@synthesize registerNibs;

// this mtehod will be called by initialized by xib
- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    tableView.delegate = self;
    tableView.dataSource = self;
    
    [self registerNibs:tableView];
    
    if ( !tableData ) {
        tableData = [NSMutableArray array];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) dealloc {
    tableView.delegate = nil;
    tableView.dataSource = nil;
    tableData = nil;
    registerNibs = nil;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma tableView delegate methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tView
{
    return [tableData count];
}

- (NSInteger)tableView:(UITableView *)tView numberOfRowsInSection:(NSInteger)section {
    return [[tableData objectAtIndex:section] count];
}

-(UITableViewCell *)tableView:(UITableView *)tView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CellIdentifier";
    
    UITableViewCell *cell = (UITableViewCell *)[tView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    return cell;
}

#pragma tableView helper methods

-(void) registerNibs:(UITableView *)tView
{
    if ( [registerNibs count] > 0 ) {
        for ( NSString *nibName in registerNibs ) {
            [tView registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellReuseIdentifier:nibName];
        }
    }
}

@end
