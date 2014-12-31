//
//  BNRContainer.m
//  RandomItems
//
//  Created by Glenn on 12/30/14.
//  Copyright (c) 2014 Glenn. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype)initContainer:(NSString *)itemName {
    self = [super init];
    if (!self) return nil;
    _itemName = itemName;
    _items    = [[NSMutableArray alloc] init];
    return self;
}

- (void)addObject:(BNRItem *)item {
    [_items addObject:item];
}

- (NSString *)description {
    NSString *template = @"*Container name: %@, worth: $%d, items: %@";
    return [NSString stringWithFormat:template, _itemName, self.valueInDollars, self.itemName];
}

- (NSString *)itemName {
    NSString *names = nil;
    for(BNRItem *item in _items) {
        names = names ? [NSString stringWithFormat:@"%@, %@", names, item.itemName]
                      : item.itemName;
    }
    return names;
}

- (int)valueInDollars {
    int sum = 0;
    for(BNRItem *item in _items) {
        sum += item.valueInDollars;
    }
    return sum;
}
@end
