//
//  TTPullUpDownVCAnimatedTransition.h
//  test_childVC
//
//  Created by LinWeichao on 9/18/15.
//  Copyright (c) 2015 LinWeichao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TTPullUpDownVCAnimator : NSObject<UIViewControllerAnimatedTransitioning>

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext completeBlock:(void(^)())compleBlock;
@end
