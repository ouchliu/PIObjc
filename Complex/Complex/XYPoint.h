//
//  XYPoint.h
//  Graphics
//
//  Created by Charlie on 6/26/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

@property float x, y;

-(void) setX: (float) xVal andY: (float) yVal;
-(void) print;

@end
