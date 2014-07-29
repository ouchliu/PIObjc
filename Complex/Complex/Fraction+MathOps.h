//
//  Fraction+MathOps.h
//  Complex
//
//  Created by Charlie on 6/30/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)

-(id) addd: (id) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(Fraction *) reverse;
+(int) addCount;

@end
