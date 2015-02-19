//
//  BootstrapTest.m
//  MYBASEPROJECT
//
//  Created by yuki.kokubun on 2015/02/19.
//  Copyright (c) 2015年 kiyoshi.tokunaga. All rights reserved.
//

#import "BootstrapTest.h"
#import "KIFUITestActor.h"


@implementation BootstrapTest

- (void) testBootstrap
{
    [tester waitForViewWithAccessibilityLabel:@"basicViewController"];
}

@end
