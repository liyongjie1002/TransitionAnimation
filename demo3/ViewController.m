//
//  ViewController.m
//  demo3
//
//  Created by liyongjie on 2017/10/13.
//  Copyright © 2017年 liyongjie. All rights reserved.
//

#import "ViewController.h"
#import "TmpViewController.h"
#import "YJPresentTransition.h"
#import "YJDismissTransition.h"
@interface ViewController ()<UIViewControllerTransitioningDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(100, 100, 200, 30)];
    [button setTitle:@"点我开始动画" forState: UIControlStateNormal];
    [button addTarget:self action:@selector(presentNext) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundColor:[UIColor redColor]];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:button];
  
}

#pragma mark - 跳转到下个页面
-(void)presentNext{
    TmpViewController *tmp = [TmpViewController new];
    tmp.transitioningDelegate = self;//不要忘记设置代理
    [self presentViewController:tmp animated:YES completion:nil];
}
#pragma mark - UIViewControllerAnimatedTransitioning
-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return [YJPresentTransition new];
}
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return [YJDismissTransition new];
}
@end
