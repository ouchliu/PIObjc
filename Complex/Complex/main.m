//
//  main.m
//  Complex
//
//  Created by Charlie on 6/24/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"
#import "Fraction+MathOps.h"
#import "Fraction+Comparison.h"
#include "XYPoint.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSLog(@"%i", [Fraction count]);
        typedef Fraction *FractionObj;
        FractionObj fraction = [[Fraction allocF] initWith: 2 over: 5];
        FractionObj fraction23 = [[Fraction allocF] initWith: 2 over: 5];
        NSLog(@"%i", [Fraction count]);
        [[fraction addd: fraction23] addd: fraction];
        NSLog(@"%i", [Fraction addCount]);
        [[fraction reverse] print];
        NSLog(@"Test? %@", [fraction isEqualTo: fraction23] ? @"YES" : @"NO");
        NSLog(@"The sum of %@ and %@ is %@", fraction, fraction23, [fraction addd: fraction23]);
        NSString *my = @"fuck";
        NSLog(@"%@", my);
    }
    return 0;
    
}

