//
//  NSMutableDictionary+XPFSafeSetObject.m
//  XPFramework
//
//  Created by xiaopin on 16/1/12.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import "NSMutableDictionary+XPFSafeSetObject.h"

@implementation NSMutableDictionary (XPFSafeSetObject)

- (void)safeSetObject:(id)object forKey:(id)key {
    if (object && key) {
        [self setObject:object forKey:key];
    }
}

@end
