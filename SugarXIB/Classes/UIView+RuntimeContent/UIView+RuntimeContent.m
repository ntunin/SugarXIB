//
//  UIView+RuntimeContent.m
//  CasinoInsider
//
//  Created by michail on 09/04/2018.
//  Copyright © 2018 myluckyuniverse. All rights reserved.
//

#import "UIView+RuntimeContent.h"

@implementation UIView(RuntimeContent)
- (void) setRuntimeContentWithNibName: (NSString *) nibName {
    UIView *view = [[NSBundle mainBundle] loadNibNamed: nibName owner: self options: nil][0];
    CGRect frame = CGRectMake(0, 0, view.frame.size.width, view.frame.size.height);
    view.frame = frame;
    [self addSubview: view];
}
@end
