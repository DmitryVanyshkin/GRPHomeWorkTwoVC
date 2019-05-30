//
//  HorizontalViewController.m
//  GRPHomeWorkFourViewController
//
//  Created by Дмитрий Ванюшкин on 30/05/2019.
//  Copyright © 2019 Dmitry Vanyushkin. All rights reserved.
//

#import "HorizontalViewController.h"
#import "BlueViewController.h"
#import "RedViewController.h"

@interface HorizontalViewController ()

@end



@implementation HorizontalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RedViewController* redVc = [[RedViewController alloc] init];
    
    [self addChildViewController:redVc];
    
    [self.view addSubview:redVc.view];
    
    redVc.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height / 2);
    
    [redVc didMoveToParentViewController:self];
    
    BlueViewController* blueVc = [[BlueViewController alloc] init];
    
    [self addChildViewController:blueVc];
    
    [self.view addSubview:blueVc.view];
    
    blueVc.view.frame = CGRectMake(0, self.view.frame.size.height / 2, self.view.frame.size.width, self.view.frame.size.height / 2);
    
    [blueVc didMoveToParentViewController:self];
    
    
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
