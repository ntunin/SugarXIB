//
//  UILabel+AutoFill.m
//  CasinoInsider
//
//  Created by michail on 09/04/2018.
//  Copyright © 2018 myluckyuniverse. All rights reserved.
//

#import "UILabel+AutoFill.h"
#import "UIView+AutoFill.h"

@implementation UILabel(AutoFill)

- (void) autoFillFromData: (NSDictionary *) dictionary {
    NSString *key = [self getAutoFillKey];
    self.text = dictionary[key];
}

@end
