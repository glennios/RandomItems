//
//  BNRItem.h
//  RandomItems
//
//  Created by Glenn on 12/28/14.
//  Copyright (c) 2014 Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString    *_itemName;
    NSString    *_serialNumber;
    NSDate      *_dateCreated;
    int          _valueInDollars;
}

+ (instancetype)randomItem;

- (instancetype)initWithItemName:(NSString *)name;

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)serial;

- (instancetype)initWithItemName:(NSString *)name
                    serialNumber:(NSString *)serial;

- (void)setItemName:(NSString *)name;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)serialNumber;
- (NSString *)serialNumber;

- (void)setDateCreated:(NSDate *)date;
- (NSDate *)dateCreated;

- (void)setValueInDollars:(int)val;
- (int)valueInDollars;
@end
