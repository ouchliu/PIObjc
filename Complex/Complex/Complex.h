//
//  Complex.h
//  Complex
//
//  Created by Charlie on 6/24/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal: (double) r andImaginary: (double) i;
-(Complex *) add: (Complex *) c;

@end
