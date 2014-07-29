//
//  AddressCard.h
//  Playground
//
//  Created by Charlie on 7/9/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email;

-(void) setName:(NSString *)aname andEmail:(NSString *)aemail;
-(void) print;
-(instancetype) initWithName:(NSString *)name andEmail:(NSString *)email;
-(BOOL) isEqual: (AddressCard *) theCard;
-(NSComparisonResult) compareNames: (id) element;

@end
