//
//  TmpViewController.m
//  demo3
//
//  Created by liyongjie on 2017/10/13.
//  Copyright © 2017年 liyongjie. All rights reserved.
//

#import "TmpViewController.h"

@interface TmpViewController ()

@end

@implementation TmpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(100, 100, 200, 30)];
    [button setTitle:@"点我回去" forState: UIControlStateNormal];
    [button addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundColor:[UIColor redColor]];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:button];
   
    self.view.backgroundColor = [UIColor grayColor];
}

-(void)backAction{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
