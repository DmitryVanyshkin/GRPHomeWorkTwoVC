//
//  GRPTabBarController.m
//  GRPHomeWorkFourViewController
//
//  Created by Дмитрий Ванюшкин on 30/05/2019.
//  Copyright © 2019 Dmitry Vanyushkin. All rights reserved.
//

#import "GRPTabBarController.h"
#import "HorizontalViewController.h"
#include "VerticalViewController.h"

@interface GRPTabBarController ()

@end

@implementation GRPTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tabBar setTranslucent:NO];
    
    HorizontalViewController* horizontal = [[HorizontalViewController alloc] init];
    horizontal.tabBarItem.title = @"Horizontal";
    
    VerticalViewController* vertical = [[VerticalViewController alloc] init];
    vertical.tabBarItem.title = @"Vertival";
    
    self.viewControllers = @[horizontal, vertical];
    
    // Do any additional setup after loading the view.
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
