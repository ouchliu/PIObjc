//
//  Rectangle.h
//  Graphics
//
//  Created by Charlie on 6/26/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "XYPoint.h"
#include "GraphicObject.h"


//@class XYPoint;

@interface Rectangle : GraphicObject

@property XYPoint *origin;
@property float width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(float) area;
-(float) perimeter;
-(void) setWidth: (float) w andHeight: (float) h;
-(void) translate: (XYPoint *) pt;
-(BOOL) containsPoint: (XYPoint *) aPoint;
-(Rectangle *) intersect: (Rectangle *) Rect;
-(void) draw;
-(instancetype) initWithWidth: (float) w andHeight: (float) h;
-(instancetype) init;

@end
