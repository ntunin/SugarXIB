//
//  NSArray+Fetch.h
//
//  Created by michail on 26/03/2018.
//  Copyright © 2018 myluckyuniverse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray(Fetch)
- (NSArray *) fetchItemsWithIds: (NSArray *) ids;
- (NSDictionary *) fetchItemWithPartialInfo: (NSDictionary *) partial byField: (NSString *) fieldName;
@end
