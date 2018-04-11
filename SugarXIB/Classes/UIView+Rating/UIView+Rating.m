//
//  UIView+Rating.m
//  CasinoDirectory
//
//  Created by michail on 27/07/2017.
//  Copyright © 2017 danny. All rights reserved.
//

#import "UIView+Rating.h"

@implementation UIView(Rating)

- (void) setRating: (NSString *) ratingString {
    NSInteger rating = round([ratingString floatValue]);
    for(NSInteger i = 0; i < self.subviews.count; i++) {
        UIView *view = self.subviews[i];
        if([view isKindOfClass: UIImageView.class]) {
            UIImageView *imageView = (UIImageView *)view;
            imageView.image = [UIImage imageNamed: (i < rating)? @"star": @"star-inactive"];
        }
    }
}

@end
