//
//  CALayer+UIColor.m
//  CasinoDirectory
//
//  Created by michail on 27/07/2017.
//  Copyright © 2017 danny. All rights reserved.
//

#import "CALayer+UIColor.h"

@implementation CALayer(UIColor)
- (void) setBorderUIColor:(UIColor *) color {
    self.borderColor = color.CGColor;
}

- (void) setShadowUIColor:(UIColor *) color {
    self.shadowColor = color.CGColor;
}

@end
