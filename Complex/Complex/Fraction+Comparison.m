//
//  Fraction+Comparison.m
//  Complex
//
//  Created by Charlie on 7/1/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import "Fraction+Comparison.h"

@implementation Fraction (Comparison)
-(BOOL) isEqualTo:(Fraction *)f {
    if (self.numerator * f.denominator - self.denominator * f.numerator == 0) {
        return YES;
    } else {
        return NO;
    }
}

-(int) compare:(Fraction *)f {
    int result = self.numerator * f.denominator - self.denominator * f.numerator;
    if (result > 0) {
        return 1;
    } else if (result == 0) {
        return 0;
    } else {
        return -1;
    }
}

@end
