//
//  UITabBar+RedDotBadge.h
//  XPFramework
//
//  Created by xiaopin on 16/1/12.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  UITabBar的小红点
 */
@interface UITabBar (RedDotBadge)

- (void)showBadgeOnItemIndex:(int)index;

- (void)hideBadgeOnItemIndex:(int)index;

- (void)removeBadgeOnItemIndex:(int)index;

@end
