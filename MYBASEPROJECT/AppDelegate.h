//
//  AppDelegate.h
//  MYBASEPROJECT
//
//  Created by 徳永清詩 on 2014/12/14.
//  Copyright (c) 2014年 kiyoshi.tokunaga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MYTabBarController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (nonatomic, retain) IBOutlet MYTabBarController *tabController;

@end

