//
//  TTPullUpDownVCAnimatedTransition.m
//  test_childVC
//
//  Created by LinWeichao on 9/18/15.
//  Copyright (c) 2015 LinWeichao. All rights reserved.
//

#import "TTPullUpDownVCAnimator.h"

@implementation TTPullUpDownVCAnimator

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.3f;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    [self animateTransition:transitionContext completeBlock:nil];
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext completeBlock:(void(^)())compleBlock
{
    UIViewController* fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController* toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.view.frame = [transitionContext initialFrameForViewController:toVC];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            fromVC.view.frame = [transitionContext finalFrameForViewController:fromVC];
            toVC.view.frame = [transitionContext finalFrameForViewController:toVC];
        } completion:^(BOOL finished) {
            [fromVC.view removeFromSuperview];
            if (compleBlock)
            {
                compleBlock();
            }
        }];
    });
    }
@end
