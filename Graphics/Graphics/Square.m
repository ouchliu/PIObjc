//
//  Square.m
//  Graphics
//
//  Created by Charlie on 6/26/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import "Square.h"

@implementation Square
-(instancetype) initWithSide:(float)s {
    self = [super init];
    rect = [[Rectangle alloc] init];
    if (self && rect) {
        [self setSide: s];
    }
    return self;
}

-(instancetype) init {
    return [self initWithSide: 0];
}

-(void) setSide: (float) s {
    [rect setWidth: s andHeight: s];
}

-(float) side {
    return rect.width;
}

-(float) area {
    return [rect area];
}

-(float) perimeter {
    return [rect perimeter];
}

@end
