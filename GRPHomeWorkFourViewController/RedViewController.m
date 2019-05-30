//
//  RedViewController.m
//  GRPHomeWorkFourViewController
//
//  Created by Дмитрий Ванюшкин on 30/05/2019.
//  Copyright © 2019 Dmitry Vanyushkin. All rights reserved.
//

#import "RedViewController.h"

@interface RedViewController ()

@end

@implementation RedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.redColor;
    
    UIImageView* imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Best way"]];
    
    
    
    [self.view addSubview:imageView];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [imageView.widthAnchor constraintEqualToConstant:self.view.frame.size.height / 2].active = YES;
    [imageView.heightAnchor constraintEqualToConstant:self.view.frame.size.width / 2].active = YES;
    [imageView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [imageView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    
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
