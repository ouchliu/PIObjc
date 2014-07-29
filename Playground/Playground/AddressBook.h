//
//  AddressBook.h
//  Playground
//
//  Created by Charlie on 7/21/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property (copy, nonatomic) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(instancetype) initWithName: (NSString *)name;
-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;

-(NSUInteger) entries;
-(void) list;
-(AddressCard *) lookup: (NSString *) name;
-(void) sort;

@end
