//
//  UIColor+RGB.h
//  CasinoDirectory
//
//  Created by michail on 12/03/2018.
//  Copyright © 2018 danny. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor(RGB)
+ (UIColor *) hex: (NSInteger) hex;
+ (UIColor *) hexString: (NSString *) hex;
+ (UIColor *) r: (CGFloat) r g: (CGFloat) g b: (CGFloat) b;
+ (UIColor *) r: (CGFloat) r g: (CGFloat) g b: (CGFloat) b a: (CGFloat) a;
@end
