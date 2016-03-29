//
//  NSMutableDictionary+XPFSafeSetObject.h
//  XPFramework
//
//  Created by xiaopin on 16/1/12.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (XPFSafeSetObject)

- (void)safeSetObject:(id)object forKey:(id)key;

@end
