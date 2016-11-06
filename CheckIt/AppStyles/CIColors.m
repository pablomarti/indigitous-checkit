//
//  CIColors.m
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import "CIColors.h"

@implementation CIColors

+ (UIColor *)white {
    return [UIColor whiteColor];
}

+ (UIColor *)red {
    return [self colorWithRed:237.0f green:37.0f blue:29.0f];
}

+ (UIColor *)navigationBarColor {
    return [self red];
}

#pragma mark - Base methods

+ (UIColor *)colorWithRed:(float)red green:(float)green blue:(float)blue {
    return [self colorWithRed:red green:green blue:blue alpha:1.0f];
}

+ (UIColor *)colorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha {
    return [[UIColor alloc] initWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:alpha];
}

@end
