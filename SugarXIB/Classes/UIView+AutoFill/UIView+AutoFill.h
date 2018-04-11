//
//  UIView+AutoFillKey.h
//  CasinoInsider
//
//  Created by michail on 09/04/2018.
//  Copyright © 2018 myluckyuniverse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView(AutoFill)
- (void) setAutoFillKey:(NSString *) autoFillKey;
- (NSString *) getAutoFillKey;
- (void) autoFillFromData: (NSDictionary *) dictionary;
@end
