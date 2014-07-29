//
//  Complex.m
//  Complex
//
//  Created by Charlie on 6/24/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print {
    NSLog(@"%g + %g i", real, imaginary);
}

-(void) setReal: (double) r andImaginary: (double) i {
    real = r;
    imaginary = i;
}

-(Complex *) add: (Complex *) c {
    Complex *result = [[Complex alloc] init];
    result.real = self.real + c.real;
    result.imaginary = self.imaginary + c.imaginary;
    return result;
}

@end
