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

+ (UIColor *)navigationBarColor {
    return [self colorWithRed:94.0f green:108.0f blue:115.0f];
}

#pragma mark - Base methods

+ (UIColor *)colorWithRed:(float)red green:(float)green blue:(float)blue {
    return [self colorWithRed:red green:green blue:blue alpha:1.0f];
}

+ (UIColor *)colorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha {
    return [[UIColor alloc] initWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:alpha];
}

@end
