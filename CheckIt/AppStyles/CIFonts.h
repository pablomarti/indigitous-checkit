//
//  CIFonts.h
//  CheckIt
//
//  Created by Devserker on 11/5/16.
//  Copyright © 2016 Indigitous. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CIFonts : NSObject

+ (UIFont *)regularFontForSize:(CGFloat)size;
+ (UIFont *)lightFontForSize:(CGFloat)size;
+ (UIFont *)boldFontForSize:(CGFloat)size;
+ (UIFont *)semiBoldFontForSize:(CGFloat)size;

@end
