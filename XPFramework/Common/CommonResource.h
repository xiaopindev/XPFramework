//
//  CommonResource.h
//  XPFramework
//
//  Created by xiaopin on 16/1/12.
//  Copyright © 2016年 pinguo. All rights reserved.
//
/**
   需要导入的库
   AVFoundation.framework
   AssetsLibrary.framework
 */
#import <Foundation/Foundation.h>

/**
 *  通用方法库
 */
@interface CommonResource : NSObject

/**
 *  判断是否有相机访问权限
 *
 *  @return YES 有访问相机权限，NO 没有权限访问相机
 */
+(BOOL)checkCameraPermission;
/**
 *  判断是否有相册访问权限
 *
 *  @return YES 有访问相册权限，NO 没有权限访问相册
 */
+(BOOL)checkPhotoLibraryPermission;
/**
 *  判断定位是否开启
 *
 *  @return YES为开启，NO 没有开启
 */
+(BOOL)checkLocationOpen;
/**
 *  自动计算标签的宽度
 *
 *  @param label UILabel对象
 *
 *  @return 宽度
 */
+(CGFloat)autoLabelWidth:(UILabel*)label;
/**
 *  自动计算标签的高度
 *
 *  @param label UILabel对象
 *
 *  @return 高度
 */
+(CGFloat)autoLabelHeight:(UILabel*)label;
/**
 *  自动计算字符串宽度
 *
 *  @param str NSString 对象字符串
 *
 *  @return 宽度
 */
+(CGFloat)autoStringWidth:(NSString*)str textFont:(UIFont*)font heightShow:(CGFloat)height;
/**
 *  自动计算字符串高度
 *
 *  @param str NSString 对象字符串
 *
 *  @return 高度
 */
+(CGFloat)autoStringHeight:(NSString*)str textFont:(UIFont*)font widthShow:(CGFloat)width;

@end
