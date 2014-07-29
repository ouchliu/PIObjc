//
//  Square.h
//  Graphics
//
//  Created by Charlie on 6/26/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#include "Rectangle.h"
#define IPAD 1

@interface Square : NSObject
{
    Rectangle * rect;
}
-(instancetype) initWithSide: (float) s;
-(instancetype) init;
-(void) setSide: (float) n;
-(float) side;
-(float) area;
-(float) perimeter;

@end
