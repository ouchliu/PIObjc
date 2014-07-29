//
//  Fraction.h
//  prog1
//
//  Created by Charlie on 6/23/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction: NSObject

@property int numerator, denominator;

-(void) print;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
-(void) reduce;
-(instancetype) initWith: (int) n over: (int) d;
-(instancetype) init;

-(BOOL) isEqualTo:(id)object;
-(BOOL) isLessThanOrEqualTo:(id)object;
-(BOOL) isLessThan:(id)object;
-(BOOL) isGreaterThanOrEqualTo:(id)object;
-(BOOL) isGreaterThan:(id)object;
-(BOOL) isNotEqualTo:(id)object;

-(NSString *) description;

+(Fraction *) allocF;
+(int) count;
@end
