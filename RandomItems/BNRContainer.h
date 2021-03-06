//
//  BNRContainer.h
//  RandomItems
//
//  Created by Glenn on 12/30/14.
//  Copyright (c) 2014 Glenn. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
// Inherited from BNRItem
//    NSString    *_itemName;
//    int          _valueInDollars;
    NSMutableArray *_items;
}

- (instancetype)initContainer:(NSString *)itemName;

- (void)addObject:(BNRItem *)item;

@end
