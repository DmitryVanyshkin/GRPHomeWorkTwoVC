//
//  VerticalViewController.m
//  GRPHomeWorkFourViewController
//
//  Created by Дмитрий Ванюшкин on 30/05/2019.
//  Copyright © 2019 Dmitry Vanyushkin. All rights reserved.
//

#import "VerticalViewController.h"
#import "BlueViewController.h"
#import "RedViewController.h"

@interface VerticalViewController ()

@end

@implementation VerticalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RedViewController* redVc = [[RedViewController alloc] init];
    
    [self addChildViewController:redVc];
    
    [self.view addSubview:redVc.view];
    
//    redVc.view.frame = CGRectMake(0, 0, self.view.frame.size.width / 2, self.view.frame.size.height);
    
    [redVc didMoveToParentViewController:self];
    
    BlueViewController* blueVc = [[BlueViewController alloc] init];
    
    [self addChildViewController:blueVc];
    
    [self.view addSubview:blueVc.view];
    
    redVc.view.translatesAutoresizingMaskIntoConstraints = false;
    blueVc.view.translatesAutoresizingMaskIntoConstraints = false;
    
    [redVc.view.widthAnchor constraintEqualToAnchor:self.view.widthAnchor multiplier: 0.5].active = YES;
    [redVc.view.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier: 1].active = YES;
    [redVc.view.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [redVc.view.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    
    [blueVc.view.widthAnchor constraintEqualToAnchor:self.view.widthAnchor multiplier: 0.5].active = YES;
    [blueVc.view.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier: 1].active = YES;
    [blueVc.view.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [blueVc.view.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    
//    blueVc.view.frame = CGRectMake( self.view.frame.size.width / 2, 0, self.view.frame.size.width / 2, self.view.frame.size.height);
    
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
