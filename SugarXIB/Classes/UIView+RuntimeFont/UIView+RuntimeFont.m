//
//  UIView+RuntimeFont.m
//
//  Created by michail on 05/04/2018.
//  Copyright © 2018 myluckyuniverse. All rights reserved.
//

#import "UIView+RuntimeFont.h"

@implementation UILabel(RuntimeFont)

- (void) setRuntimeFont: (NSString *) runtimeFontInfo {
    NSArray *infoComponents = [runtimeFontInfo componentsSeparatedByString: @"~"];
    NSString *fontName = [(NSString *)infoComponents[0] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    CGFloat fontSize = ((NSString*)infoComponents[1]).floatValue;
    UIFont *font = [UIFont fontWithName: fontName size: fontSize];
    [self setFont: font];
}

@end

@implementation UIButton(RuntimeFont)

- (void) setRuntimeFont: (NSString *) runtimeFontInfo {
    NSArray *infoComponents = [runtimeFontInfo componentsSeparatedByString: @"~"];
    NSString *fontName = [(NSString *)infoComponents[0] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    CGFloat fontSize = ((NSString*)infoComponents[1]).floatValue;
    UIFont *font = [UIFont fontWithName: fontName size: fontSize];
    [self.titleLabel setFont: font];
}

@end
