//
//  BNRItem.m
//  RandomItems
//
//  Created by Glenn on 12/28/14.
//  Copyright (c) 2014 Glenn. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (instancetype)randomItem {
    NSArray *rndAjctList = @[@"Fluffy", @"Rusty", @"Shiny"];
    NSArray *rndNounList = @[@"Bear", @"Spork", @"Mac"];
    NSInteger ajctIndex = arc4random() % [rndAjctList count];
    NSInteger nounIndex = arc4random() % [rndNounList count];

    int      rndValue = arc4random() % 100;
    NSString *rndName = [NSString stringWithFormat:@"%@ %@",
                            [rndAjctList objectAtIndex:ajctIndex],
                            [rndNounList objectAtIndex:nounIndex]
                        ];
    NSString *rndSerial = [NSString stringWithFormat:@"%c%c%c%c%c",
                                '0' + arc4random() % 10,
                                'A' + arc4random() % 26,
                                '0' + arc4random() % 10,
                                'A' + arc4random() % 26,
                                '0' + arc4random() % 10
                          ];
    BNRItem *newItem = [[self alloc] initWithItemName:rndName valueInDollars:rndValue serialNumber:rndSerial];
    return newItem;
}

// "DESIGNATED INITIALIZER" - everyone goes through here
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)serial {
    // call superclass's initializer
    self = [super init];
    if (!self) return nil;

    // set dateCreated to new instance of NSDate which is the current datetime
    _dateCreated    = [[NSDate alloc] init];
    _itemName       = name;
    _valueInDollars = value;
    _serialNumber   = serial;

    return self;
}

- (instancetype)init {
    return [self initWithItemName:@"Item"];
}

- (instancetype)initWithItemName:(NSString *)name {
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}


// itemName
- (void)setItemName:(NSString *)name {
    _itemName = name;
}
- (NSString *)itemName {
    return _itemName;
}
// serialNumber
- (void)setSerialNumber:(NSString *)serialNumber {
    _serialNumber = serialNumber;
}
- (NSString *)serialNumber {
    return _serialNumber;
}
// dateCreated
- (void)setDateCreated:(NSDate *)date {
    _dateCreated = date;
}
- (NSDate *)dateCreated {
    return _dateCreated;
}
// valueInDollars
- (void)setValueInDollars:(int)val {
    _valueInDollars = val;
}
- (int)valueInDollars {
    return _valueInDollars;
}
- (NSString *)description {
    NSString *desc = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                      self.itemName,
                      self.serialNumber,
                      self.valueInDollars,
                      self.dateCreated
                     ];
    
    
    return desc;
}
@end
