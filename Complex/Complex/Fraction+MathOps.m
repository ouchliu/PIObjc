//
//  Fraction+MathOps.m
//  Complex
//
//  Created by Charlie on 6/30/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import "Fraction+MathOps.h"

int gAddCounter;

@implementation Fraction (MathOps)
-(id) addd: (id)f {
    id result = [[Fraction alloc] init];
    [result setNumerator: self.numerator * [f denominator] +  self.denominator * [f numerator]];
    [result setDenominator: self.denominator * [f denominator]];
    [result reduce];
    gAddCounter++;
    return result;
}

-(Fraction *) subtract: (Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator =  self.numerator * f.denominator -  self.denominator * f.numerator;
    result.denominator =  self.denominator * f.denominator;
    [result reduce];
    return result;
}

-(Fraction *) multiply: (Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator =  self.numerator * f.numerator;
    result.denominator =  self.denominator * f.denominator;
    [result reduce];
    return result;
}


-(Fraction *) divide: (Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    return result;
}

-(Fraction *) reverse {
    Fraction *result = [[Fraction alloc] initWith: 0 over: 0];
    result.numerator = self.denominator;
    result.denominator = self.numerator;
    return result;
}

+(int) addCount {
    return gAddCounter;
}

@end
