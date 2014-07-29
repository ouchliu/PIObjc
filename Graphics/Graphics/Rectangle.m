//
//  Rectangle.m
//  Graphics
//
//  Created by Charlie on 6/26/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle


@synthesize width, height, origin;

-(XYPoint *) origin {
    return origin;
}

-(void) setOrigin:(XYPoint *) pt {
    if (!origin) {
        origin = [[XYPoint alloc] init];
    }
    
    origin.x = pt.x;
    origin.y = pt.y;
}

-(float) area {
    return width * height;
}

-(float) perimeter {
    return 2 * (width + height);
}

-(void) setWidth: (float) w andHeight: (float) h {
    width = w;
    height = h;
}

-(void) translate: (XYPoint *) pt {
    if (!origin) {
        origin = [[XYPoint alloc] init];
    }
    
    origin.x = pt.x;
    origin.y = pt.y;
}

-(BOOL) containsPoint: (XYPoint *) aPoint {
    if (origin && (aPoint.x <= self.origin.x + width && aPoint.x >= self.origin.x)
            && (aPoint.y <= self.origin.y + height && aPoint.y >= self.origin.y)){
        return TRUE;
    } else {
        return FALSE;
    }
}

-(Rectangle *) intersect: (Rectangle *) Rect {
    Rectangle *result = [[Rectangle alloc] init];
    result.origin = [[XYPoint alloc] init];
    
    if (Rect.origin.x < self.origin.x && Rect.origin.x + Rect.width > self.origin.x) {
        result.width = MIN(Rect.origin.x + Rect.width - self.origin.x, self.width);
        [result.origin setX: self.origin.x];
    }
    if (Rect.origin.x >= self.origin.x && Rect.origin.x < self.origin.x + self.width) {
        result.width = self.origin.x + self.width - Rect.origin.x;
        [result.origin setX: Rect.origin.x];
    }
    if (Rect.origin.y < self.origin.y && Rect.origin.y + Rect.height > self.origin.y) {
        result.height = MIN(Rect.origin.y + Rect.height - self.origin.y, self.height);
        [result.origin setY: self.origin.y];
    }
    if (Rect.origin.y >= self.origin.y && Rect.origin.y < self.origin.y + self.height) {
        result.height = self.origin.y + self.height - Rect.origin.y;
        [result.origin setY: Rect.origin.y];
    }
    if (!result.width || !result.height) {
        result.width = 0;
        result.height = 0;
        [result.origin setX: 0 andY: 0];
    }
    
    return result;
}

-(void) draw {
    for (int i = 0; i < width; i++) {
        printf("- ");
    }
        printf("\n");
    for (int j = 0; j < height; j++) {
        printf("|");
        for (int i = 0; i < 2 * width - 3; i++) {
            printf(" ");
        }
        printf("|\n");
    }
    for (int i = 0; i < width; i++) {
        printf("- ");
    }
}

-(instancetype) initWithWidth:(float)w andHeight:(float)h {
    self = [super init];
    if (self) {
        [self setWidth: w andHeight: h];
    }
    return self;
}

-(instancetype) init {
    return [self initWithWidth: 0 andHeight: 0];
}

@end
