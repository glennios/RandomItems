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
        for (BNRItem *item in items) { NSLog(@"%@", item); }
        
        // fill container with items
        BNRContainer *capsule = [[BNRContainer alloc] initContainer:@"My Time Capsule"];
        for (BNRItem *item in items) [capsule addObject:item];

        NSLog(@"%@", capsule);
        
        // destroy array
        items = nil;
    }
    return 0;
}
