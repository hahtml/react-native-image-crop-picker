//
//  PushNoAnimationSegue.m
//  QBImagePicker
//
//  Created by Maolei Tang on 3/3/20.
//  Copyright © 2020 Katsuma Tanaka. All rights reserved.
//

#import "PushNoAnimationSegue.h"

#import "UIViewController+EnableAnimation.h"

@implementation PushNoAnimationSegue

- (void)perform {
    if (self.sourceViewController.enableAnimation) {
        [self.sourceViewController.navigationController pushViewController:self.destinationViewController animated:YES];
    } else {
        [self.sourceViewController.navigationController pushViewController:self.destinationViewController animated:NO];
    }
}

@end
