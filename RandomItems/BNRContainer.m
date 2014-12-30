//
//  BNRContainer.m
//  RandomItems
//
//  Created by Glenn on 12/30/14.
//  Copyright (c) 2014 Glenn. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer


- (void)addObject:(BNRItem *)item {
    [_items addObject:item];
}

- (NSString *)description {
    return @"this is my bnr container description string";
}
@end
