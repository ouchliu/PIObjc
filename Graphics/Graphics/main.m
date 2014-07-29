//
//  main.m
//  Graphics
//
//  Created by Charlie on 6/26/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Square.h"
#define MAX3(a, b, c) ((((a) > (b)) ? (b) : (a)) > (c) ? (((a) > (b)) ? (b) : (a)) : (c))
#define IS_UPPER_CASE(x) (((x) >= 'A') && ((x) <= 'Z'))
#define IS_LOWER_CASE(x) (((x) >= 'a') && ((x) <= 'z'))
#define IS_ALPHABETIC(x) ((IS_UPPER_CASE(x)) || (IS_LOWER_CASE(x)))
#define IS_DIGIT(x) (((x) >= '0') && ((x) <= '9'))
#define IS_SPECIAL(x) (!IS_DIGIT(x) && !IS_ALPHABETIC(x))
#define ABSOLUTE_VALUE(x) ((x) >= 0 ? (x) : -(x))

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Square *my = [[Square alloc] init];
        NSLog(@"Width: %g per:%g", my.side, [my area]);
        NSLog(@"%i", ABSOLUTE_VALUE(-3-4));
    }
    return 0;
    

    
}



