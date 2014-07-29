//
//  AddressBook.m
//  Playground
//
//  Created by Charlie on 7/21/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

-(instancetype) initWithName: (NSString *)name {
    self = [super init];
    if (self) {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    return self;
}

-(instancetype) init {
    return [self initWithName: @"Noname"];
}

-(void) addCard: (AddressCard *) theCard {
    [self.book addObject: theCard];
}

-(void) removeCard: (AddressCard *) theCard {
    [self.book removeObject: theCard];
}

-(NSUInteger) entries; {
    return [self.book count];
}

-(void) list {
    NSLog(@"===============Contents of %@ ===========", self.bookName);
    for (AddressCard *theCard in self.book) {
        NSLog(@"%-20s     %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }
    NSLog(@"=========================================");
}

-(AddressCard *) lookup: (NSString *) name {
    for (AddressCard *nextCard in book) {
        if ([nextCard.name caseInsensitiveCompare: name] == NSOrderedSame) {
            return  nextCard;
        }
    }
    return nil;
}

-(void) sort {
    [book sortUsingSelector: @selector(compareNames:)];
}


@end
