//
//  UIImageView+AutoFill.h
//  CasinoInsider
//
//  Created by michail on 09/04/2018.
//  Copyright © 2018 myluckyuniverse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView(AutoFill)
- (void) setImageLocationType: (NSString *) type;
- (NSString *) getImageLocationType;
- (void) autoFillFromData: (NSDictionary *) dictionary;
- (void) setRenderingMode: (NSString *) renderingModeDescription;
@end
