//
//  UICollectionView+RegisterCell.m
//  CasinoInsider
//
//  Created by michail on 09/04/2018.
//  Copyright © 2018 myluckyuniverse. All rights reserved.
//

#import "UICollectionView+RegisterCell.h"
#import <objc/runtime.h>

static void *CellIdKey;

@implementation UICollectionView(RegisterCell)
- (void) setRegisterCellWithUniversalIdentifier: (NSString *) identifier {
    NSString *cellId = [self cellIdentifierOfClassWithName: identifier];
    [self setCellId: cellId];
    self.cellId = [self cellIdentifierOfClassWithName: identifier];
    UINib *nib = [UINib nibWithNibName: identifier bundle: nil];
    [self registerNib: nib forCellWithReuseIdentifier: cellId];
}


- (void) setCellId: (NSString *) cellId {
    objc_setAssociatedObject(self, &CellIdKey, cellId, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *) getCellId {
    return objc_getAssociatedObject(self, &CellIdKey);
}

- (NSString *) cellIdentifierOfClassWithName: (NSString *) className {
    UITableViewCell *cell = [[NSBundle mainBundle] loadNibNamed: className owner: self options: nil][0];
    return cell.reuseIdentifier;
}

-(UICollectionViewCell *) registeredCellForItemAtIndexPath: (NSIndexPath *) indexPath {
    static NSString *reuseCellId;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        reuseCellId = [self getCellId];
    });
    return [self dequeueReusableCellWithReuseIdentifier: reuseCellId forIndexPath: indexPath];
}

@end
