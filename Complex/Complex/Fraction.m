//
//  Fraction.m
//  prog1
//
//  Created by Charlie on 6/23/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import "Fraction.h"

static int gCounter = 0;

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
    if ( denominator < 0 &&  numerator > 0) {
         denominator = -denominator;
         numerator = -numerator;
    }
    if (denominator == 0){
        NSLog(@"%i/%i",  numerator,  denominator);
    } else {
        int whole =  numerator /  denominator;
        if ( denominator == 1) {
            NSLog(@"%i",  numerator);
        }
        else if (whole != 0) {
            int res =  numerator - whole *  denominator;
            NSLog(@"%i %i/%i", whole, res,  denominator);
        } else {
            NSLog(@"%i/%i",  numerator,  denominator);
        }
    }
}

-(double) convertToNum
{
    if ( denominator != 0) {
        return (double)  numerator/ denominator;
    } else {
        return NAN;
    }
}

-(void) setTo :(int)n over: (int)d {
     numerator = n;
     denominator = d;
}


-(void) reduce {
    int u =  numerator;
    int v =  denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
     numerator /= u;
     denominator /= u;
}

-(instancetype) initWith:(int)n over:(int)d {
    self = [super init];
    if (self) {
        [self setTo: n over: d];
    }
    return self;
}

-(instancetype) init {
    return [self initWith: 0 over: 0];
}

-(int) abs: (int) value {
    return value > 0 ? value : -value;
}

-(BOOL) isEqual:(id)object {
    if (self.numerator * [object denominator] == self.denominator * [object numerator]) {
        return YES;
    } else {
        return NO;
    }
}

-(BOOL) isLessThanOrEqualTo:(id)object {
    if (self.numerator * [object denominator] <= self.denominator * [object numerator]) {
        return YES;
    } else {
        return NO;
    }
}

-(BOOL) isLessThan:(id)object {
    if (self.numerator * [object denominator] < self.denominator * [object numerator]) {
        return YES;
    } else {
        return NO;
    }
}

-(BOOL) isGreaterThanOrEqualTo:(id)object {
    if (self.numerator * [object denominator] >= self.denominator * [object numerator]) {
        return YES;
    } else {
        return NO;
    }
}

-(BOOL) isGreaterThan:(id)object {
    if (self.numerator * [object denominator] > self.denominator * [object numerator]) {
        return YES;
    } else {
        return NO;
    }
}

-(BOOL) isNotEqualTo:(id)object {
    if (self.numerator * [object denominator] != self.denominator * [object numerator]) {
        return YES;
    } else {
        return NO;
    }
}

-(NSString *) description {
    return [NSString stringWithFormat: @"%i/%i", numerator, denominator];
}

+(Fraction *) allocF {
    ++gCounter;
    return [Fraction alloc];
}

+(int) count {
    return gCounter;
}



@end
