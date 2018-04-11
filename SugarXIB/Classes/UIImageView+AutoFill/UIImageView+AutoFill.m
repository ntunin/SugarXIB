//
//  UIImageView+AutoFill.m
//  CasinoInsider
//
//  Created by michail on 09/04/2018.
//  Copyright © 2018 myluckyuniverse. All rights reserved.
//

#import "UIImageView+AutoFill.h"
#import <objc/runtime.h>
#import "UIView+AutoFill.h"
#import "UIImageView+UIActivityIndicatorForSDWebImage.h"
static void *ImageLocationTypeKey;
static void *ImageRenderingModeKey;

@implementation UIImageView(AutoFill)

- (void) autoFillFromData: (NSDictionary *) dictionary {
    NSString *locationType = [self getImageLocationType];
    if([self contentType: locationType allowsString: @"local"]) {
        [self loadLocalImageWithData: dictionary];
    } else {
        [self loadRemoteImageWithData: dictionary];
    }
}

- (void) loadLocalImageWithData: (NSDictionary *) dictionary {
    NSString *string = [self autoFillStringFromData: dictionary];
    UIImage *image = [self imageWithRenderingModeFromImage: [UIImage imageNamed: string]];
    self.image = image;
}

- (void) loadRemoteImageWithData: (NSDictionary *) dictionary {
    NSString *string = [self autoFillStringFromData: dictionary];
    NSURL *url = [NSURL URLWithString: string];
    [self setImageWithURL: url usingActivityIndicatorStyle: UIActivityIndicatorViewStyleGray];
}

- (UIImage *) imageWithRenderingModeFromImage: (UIImage *) image {
    NSString *description = [self getRenderingModeDescription];
    if(!description) {
        return image;
    }
    if([description isEqualToString: @"template"]) {
        return [image imageWithRenderingMode: UIImageRenderingModeAlwaysTemplate];
    }
    return image;
}


- (NSString *) autoFillStringFromData: (NSDictionary *) dictionary {
    NSString *key = [self getAutoFillKey];
    return dictionary[key];
}

- (BOOL) contentType: (NSString *) type allowsString: (NSString *) string {
    return [[string lowercaseString] containsString: type];
}

- (void) setImageLocationType: (NSString *) type {
    objc_setAssociatedObject(self, &ImageLocationTypeKey, type, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *) getImageLocationType {
    return objc_getAssociatedObject(self, &ImageLocationTypeKey);
}

- (NSString *) getRenderingModeDescription {
    return objc_getAssociatedObject(self, &ImageRenderingModeKey);
}

- (void) setRenderingMode: (NSString *) renderingModeDescription {
    objc_setAssociatedObject(self, &ImageRenderingModeKey, renderingModeDescription, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
