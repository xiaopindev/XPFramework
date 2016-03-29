//
//  UIColor+XPFColor.h
//  XPFramework
//
//  Created by xiaopin on 16/1/12.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (XPFColor)

/**
 *  16进制转颜色，格式：0xecedec
 *
 *  @param rgbValue 比如：0xecedec
 *  @param alpha    透明度：0.0-1.0
 *
 *  @return <#return value description#>
 */
+ (instancetype)colorWithRGB:(NSInteger)rgbValue alpha:(CGFloat)alpha;
/**
 *  字符串转颜色，格式：#ececec
 *
 *  @param htmlColor 比如：#ecedec
 *  @param alpha     透明度：0.0-1.0
 *
 *  @return <#return value description#>
 */
+ (instancetype)colorWithHexString:(NSString *)htmlColor alpha:(CGFloat)alpha;

@end
