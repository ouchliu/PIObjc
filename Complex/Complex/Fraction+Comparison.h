//
//  Fraction+Comparison.h
//  Complex
//
//  Created by Charlie on 7/1/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (Comparison)
-(BOOL) isEqualTo: (Fraction *) f;
-(int) compare: (Fraction *) f;
@end
