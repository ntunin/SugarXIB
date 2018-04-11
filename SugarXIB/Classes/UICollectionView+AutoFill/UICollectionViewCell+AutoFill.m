//
//  UICollectionView+AutoFill.m
//  CasinoInsider
//
//  Created by michail on 09/04/2018.
//  Copyright © 2018 myluckyuniverse. All rights reserved.
//

#import "UICollectionViewCell+AutoFill.h"
#import <objc/runtime.h>
#import "UIView+AutoFill.h"

static void *AutoFillPatternKey;

@implementation UICollectionViewCell(AutoFill)

- (void) autoFillFromData: (NSDictionary *) dictionary {
    NSString *pattern = [self getAutoFillKey];
    NSArray *fillableViewNames =[pattern componentsSeparatedByString: @" "];
    for(NSString *fillableViewName in fillableViewNames) {
        UIView *view = [self valueForKey: fillableViewName];
        [view autoFillFromData: dictionary];
    }
}

- (UIView *) getViewWithFillableViewName: (NSString *) name {
    return [self valueForKey: name];
}

@end
