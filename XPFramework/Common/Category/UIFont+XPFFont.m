//
//  UIFont+XPFFont.m
//  XPFramework
//
//  Created by xiaopin on 16/1/12.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import "UIFont+XPFFont.h"

@implementation UIFont (XPFFont)

+ (UIFont *)defaultBoldFontWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"Helvetica Bold"
                           size:size];
}

+ (UIFont *)defaultFontWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"Helvetica" size:size];
}

@end
