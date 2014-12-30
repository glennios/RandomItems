//
//  main.m
//  RandomItems
//
//  Created by Glenn on 12/28/14.
//  Copyright (c) 2014 Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create array
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // add random items to array
        for (int i = 0; i < 2; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        // log random items
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        BNRItem *itemNameSerial = [[BNRItem alloc] initWithItemName:@"Glenn" serialNumber:@"R2D2"];
        itemNameSerial.valueInDollars = 100000000; // at least 9 figs
        NSLog(@"%@", itemNameSerial);
        
        // destroy array
        items = nil;

        BNRContainer *container = [[BNRContainer alloc] init];
        for (BNRItem *item in items) {
            [container addObject:item];
        }
        NSLog(@"%@", container);
    }
    return 0;
}
