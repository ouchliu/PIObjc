//
//  AddressCard.m
//  Playground
//
//  Created by Charlie on 7/9/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

-(void) setName:(NSString *)aname andEmail:(NSString *)aemail {
    self.name = aname;
    self.email = aemail;
}

-(void) print {
    NSLog(@"================");
    NSLog(@"%@", name);
    NSLog(@"%@", email);
    NSLog(@"================");
}

-(instancetype) initWithName:(NSString *)aname andEmail:(NSString *)aemail {
    self = [super init];
    if (self) {
        self.name = aname;
        self.email = aemail;
    }
    return self;
}

-(BOOL) isEqual: (AddressCard *) theCard {
    if ([self.name isEqualToString: theCard.name] == YES &&
            [self.email isEqualToString: theCard.email] == YES) {
        return YES;
    } else {
        return NO;
    }
}

-(NSComparisonResult) compareNames:(id)element {
    return [self.name compare: [element name]];
}

@end
