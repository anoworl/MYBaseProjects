//
//  MYTabBarController.h
//  MYBASEPROJECT
//
//  Created by 徳永清詩 on 2014/12/14.
//  Copyright (c) 2014年 kiyoshi.tokunaga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MYTabBarController : UITabBarController

- (void)pushViewController:(id)viewController iconImage:(UIImage *)iconImage selectedIconImage:(UIImage *)selectedIconImage;
- (void)popViewControler;
@end
