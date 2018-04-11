//
//  UIColor+RGB.m
//  CasinoDirectory
//
//  Created by michail on 12/03/2018.
//  Copyright © 2018 danny. All rights reserved.
//

#import "UIColor+RGB.h"

@implementation UIColor(RGB)
+ (UIColor *) hex: (NSInteger) hex {
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 \
                           green:((float)((hex & 0x00FF00) >>  8))/255.0 \
                            blue:((float)((hex & 0x0000FF) >>  0))/255.0 \
                           alpha:1.0];
}

+ (UIColor *) hexString: (NSString *) hex {
    unsigned result = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hex];
    [scanner setScanLocation:1];
    [scanner scanHexInt:&result];
    return [UIColor hex: result];
}

+ (UIColor *) r: (CGFloat) r g: (CGFloat) g b: (CGFloat) b {
    return [UIColor colorWithRed: r/255 green:g/255 blue:b/255 alpha:1];
}

+ (UIColor *) r: (CGFloat) r g: (CGFloat) g b: (CGFloat) b a: (CGFloat) a {
    return [UIColor colorWithRed: r/255 green:g/255 blue:b/255 alpha: a];
}

@end
