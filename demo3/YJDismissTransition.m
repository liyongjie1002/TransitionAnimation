//
//  YJDismissTransition.m
//  demo3
//
//  Created by liyongjie on 2017/10/13.
//  Copyright © 2017年 liyongjie. All rights reserved.
//

#import "YJDismissTransition.h"
#define SCREEN_SIZE [[UIScreen mainScreen] bounds].size

@implementation YJDismissTransition
- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.3f;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *fromView = fromVC.view;
    UIView *toView = toVC.view;
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:fromView];
    [containerView addSubview:toView];
    [containerView sendSubviewToBack:toView];
    
    CGRect initialFrame = [transitionContext initialFrameForViewController:fromVC];
    fromView.frame = initialFrame;
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext]
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         fromView.frame = CGRectMake(0, -SCREEN_SIZE.height, SCREEN_SIZE.width, SCREEN_SIZE.height);
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
                     }];
}
@end
