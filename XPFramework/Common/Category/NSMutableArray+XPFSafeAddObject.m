//
//  NSMutableArray+XPFSafeAddObject.m
//  XPFramework
//
//  Created by xiaopin on 16/1/12.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import "NSMutableArray+XPFSafeAddObject.h"

@implementation NSMutableArray (XPFSafeAddObject)

- (void)safeAddObject:(id)object {
    if(object) {
        [self addObject:object];
    }
}

- (void)safeAddObjectsFromArray:(NSArray *)array {
    if(array) {
        [self addObjectsFromArray:array];
    }
}

@end
