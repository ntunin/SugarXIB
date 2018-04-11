//
//  NSArray+Fetch.m
//
//  Created by michail on 26/03/2018.
//  Copyright © 2018 myluckyuniverse. All rights reserved.
//

#import "NSArray+Fetch.h"

@implementation NSArray(Fetch)

- (NSDictionary *) fetchItemWithPartialInfo: (NSDictionary *) partial byField: (NSString *) fieldName {
    if([NSNull.null isEqual: partial]) {
        return nil;
    }
    NSString *partialItemId = partial[fieldName];
    for(NSDictionary *item in self) {
        NSString *itemId = item[fieldName];
        if([partialItemId isEqualToString: itemId]) {
            return item;
        }
    }
    return nil;
}

- (NSArray *) fetchItemsWithIds: (NSArray *) ids {
    NSMutableArray *array = [NSMutableArray array];
    for(NSDictionary *item in self) {
        NSString *itemId = item[@"id"];
        for(NSString *casinoItemId in ids) {
            if([casinoItemId isEqualToString: itemId]) {
                [array addObject: item];
                break;
            }
        }
    }
    return array;
}


@end
