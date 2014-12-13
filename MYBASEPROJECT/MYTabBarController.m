//
//  MYTabBarController.m
//  MYBASEPROJECT
//
//  Created by 徳永清詩 on 2014/12/14.
//  Copyright (c) 2014年 kiyoshi.tokunaga. All rights reserved.
//

#import "MYTabBarController.h"

@interface MYTabBarController ()
@property (nonatomic, strong) NSMutableArray *mutableViewControllers;

@end

@implementation MYTabBarController
@synthesize mutableViewControllers;

-(id)init {
    self = [super init];
    if (self) {
        mutableViewControllers = [NSMutableArray array];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    mutableViewControllers = nil;
}

#pragma my instance methods

- (void)pushViewController:(id)viewController iconImage:(UIImage *)iconImage selectedIconImage:(UIImage *)selectedIconImage
{
    [mutableViewControllers addObject:viewController];
    self.viewControllers = mutableViewControllers;
    [self pushTabBarItem:iconImage selectedImage:selectedIconImage];
}

- (void)popViewControler
{
    [mutableViewControllers removeLastObject];
    self.viewControllers = mutableViewControllers;
}

#pragma helper methods

- (void)pushTabBarItem:(UIImage *)image selectedImage:(UIImage *)selectedImage
{
    NSUInteger viewControllerCount = [self.viewControllers count];
    NSUInteger tabItemCount = [self.tabBar.items count];
    
    if (tabItemCount > viewControllerCount)
        return;
    
    UITabBarItem *tabItem = [self.tabBar.items objectAtIndex:(tabItemCount - 1)];
    tabItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
