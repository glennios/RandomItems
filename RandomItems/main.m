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
        
        // fill outerBag
        BNRContainer *outerBag = [[BNRContainer alloc] initContainer:@"Outer bag"];
        for (BNRItem *item in items) [outerBag addObject:item];
        // fill innerBag
        BNRContainer *innerBag = [[BNRContainer alloc] initContainer:@"Inner bag"];
        for (int i = 0; i < 4; i++) {
            [innerBag addObject:[BNRItem randomItem]];
        }
        // put innerBag in outerBag
        [outerBag addObject:innerBag];
        

        NSLog(@"%@", outerBag);
        
        // destroy array
        items = nil;
    }
    return 0;
}
