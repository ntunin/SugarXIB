//
//  UICollectionView+RegisterCell.h
//  CasinoInsider
//
//  Created by michail on 09/04/2018.
//  Copyright © 2018 myluckyuniverse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView(RegisterCell)
- (void) setRegisterCellWithUniversalIdentifier: (NSString *) identifier;
-(UICollectionViewCell *) registeredCellForItemAtIndexPath: (NSIndexPath *) indexPath;
@end

