//
//  NSMutableArray+XPFSafeAddObject.h
//  XPFramework
//
//  Created by xiaopin on 16/1/12.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (XPFSafeAddObject)

- (void)safeAddObject:(id)object;
- (void)safeAddObjectsFromArray:(NSArray *)array;

@end
