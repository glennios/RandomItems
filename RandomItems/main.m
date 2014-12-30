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
        
        // add random items to array
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        id lastObj = [items lastObject];
        [lastObj count]; // last item is an obj instance (not a list!) so it won't understand count
        
        // log random items
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        // destroy array
        items = nil;
    }
    return 0;
}
