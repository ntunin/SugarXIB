//
//  UIView+AutoFillKey.m
//  CasinoInsider
//
//  Created by michail on 09/04/2018.
//  Copyright © 2018 myluckyuniverse. All rights reserved.
//

#import "UIView+AutoFill.h"
#import <objc/runtime.h>
#import "UILabel+AutoFill.h"
#import "UIImageView+AutoFill.h"

static void *AutoFillAssignKey;

@implementation UIView(AutoFill)

- (void) autoFillFromData: (NSDictionary *) dictionary {
    if([self isKindOfClass: UILabel.class]) {
        UILabel *label = (UILabel *) self;
        [label autoFillFromData: dictionary];
    } else if([self isKindOfClass: UIImageView.class]) {
        UIImageView *imageView = (UIImageView *) self;
        [imageView autoFillFromData: dictionary];
    }
}

- (void) setAutoFillKey:(NSString *) autoFillKey {
    objc_setAssociatedObject(self, &AutoFillAssignKey, autoFillKey, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *) getAutoFillKey {
    return objc_getAssociatedObject(self, &AutoFillAssignKey);
}

@end
