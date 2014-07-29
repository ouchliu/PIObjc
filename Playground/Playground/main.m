//
//  main.m
//  Playground
//
//  Created by Charlie on 7/3/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *aname = @"Charlie";
        NSString *aemail = @"ctliu@ucsd.edu";
        NSString *bname = @"Shirley";
        NSString *bemail = @"shirley@ucsd.edu";
        NSString *cname = @"Ariel";
        NSString *cemail = @"ariel@ucsd.edu";
        NSString *dname = @"Steve";
        NSString *demail = @"steve@ucsd.edu";
        
        AddressCard *card1 = [[AddressCard alloc] initWithName: aname andEmail: aemail];
        AddressCard *card2 = [[AddressCard alloc] initWithName: bname andEmail: bemail];
        AddressCard *card3 = [[AddressCard alloc] initWithName: cname andEmail: cemail];
        AddressCard *card4 = [[AddressCard alloc] initWithName: dname andEmail: demail];
        
        AddressBook *myBook = [[AddressBook alloc] initWithName: @"Linda's Address Book"];
        
        NSLog(@"Entries in address book after creation: %li", [myBook entries]);
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        NSLog(@"Entries in address book after adding: %li", [myBook entries]);
        
        [myBook list];
        
        AddressCard *mycard = [myBook lookup: @"Charlie"];

        mycard = card1;
        if (mycard != nil) {
            [mycard print];
        } else {
            NSLog(@"Not found");
        }
        [myBook removeCard: mycard];
        [myBook list];
        [myBook sort];
        [myBook list];
        
    };
    return 0;
}

