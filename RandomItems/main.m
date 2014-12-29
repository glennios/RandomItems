//
//  main.m
//  RandomItems
//
//  Created by Glenn on 12/28/14.
//  Copyright (c) 2014 Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create array
        NSMutableArray *items = [[NSMutableArray alloc] init];

        // add array
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        [items insertObject:@"Zero" atIndex:0];
        
        // log array items
        for (NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        // log BNR items
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1B2C"];
        NSLog(@"%@", item);

        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        BNRItem *itemNoName = [[BNRItem alloc] init];
        NSLog(@"%@", itemNoName);

        // destroy array
        items = nil;
    }
    return 0;
}
