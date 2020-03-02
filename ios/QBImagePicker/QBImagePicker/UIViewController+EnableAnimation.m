//
//  UIViewController+EnableAnimation.m
//  QBImagePicker
//
//  Created by Maolei Tang on 3/3/20.
//  Copyright © 2020 Katsuma Tanaka. All rights reserved.
//

#import <objc/runtime.h>

#import "UIViewController+EnableAnimation.h"

static void *EnableAnimationPropertyKey = &EnableAnimationPropertyKey;

@implementation UIViewController (EnableAnimation)

- (BOOL)enableAnimation {
    NSNumber *number = objc_getAssociatedObject(self, EnableAnimationPropertyKey);
    return number.boolValue;
}

- (void)setEnableAnimation:(BOOL)enableAnimation {
    NSNumber *number = [NSNumber numberWithBool: enableAnimation];
    objc_setAssociatedObject(self, EnableAnimationPropertyKey, number, OBJC_ASSOCIATION_RETAIN);
}

@end
