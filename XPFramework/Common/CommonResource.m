//
//  CommonResource.m
//  XPFramework
//
//  Created by xiaopin on 16/1/12.
//  Copyright © 2016年 pinguo. All rights reserved.
//

#import "CommonResource.h"
#import <AVFoundation/AVFoundation.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import <CoreLocation/CoreLocation.h>

@implementation CommonResource

/**
 *  判断是否有相机访问权限
 *
 *  @return YES 有访问相机权限，NO 没有权限访问相机
 */
+ (BOOL)checkCameraPermission{
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if(authStatus == AVAuthorizationStatusDenied)
    {
        return NO;
    }
    return YES;
}

/**
 *  判断是否有相册访问权限
 *
 *  @return YES 有访问相册权限，NO 没有权限访问相册
 */
+ (BOOL)checkPhotoLibraryPermission{
    ALAuthorizationStatus authStatus = [ALAssetsLibrary authorizationStatus];
    if(authStatus == AVAuthorizationStatusDenied)
    {
        return NO;
    }
    return YES;
}

/**
 *  判断定位是否开启
 *
 *  @return YES为开启，NO 没有开启
 */
+ (BOOL)checkLocationOpen{
    if(![CLLocationManager locationServicesEnabled])
    {
        return NO;
    }
    else if ([CLLocationManager authorizationStatus] == kCLAuthorizationStatusDenied)
    {
        return NO;
    }
    return YES;
}

/**
 *  自动计算标签的宽度
 *
 *  @param label UILabel对象
 *
 *  @return 宽度
 */
+(CGFloat)autoLabelWidth:(UILabel*)label{
    if(!label)
    {
        NSLog(@"自动计算标签的宽度,标签对象为nil");
        return 0;
    }
    else
    {
        NSDictionary *attribute = @{NSFontAttributeName:label.font};
        CGSize size = [label.text boundingRectWithSize:CGSizeMake(MAXFLOAT, label.frame.size.height)
                                               options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                            attributes:attribute
                                               context:nil].size;
        return size.width;
    }
}

/**
 *  自动计算标签的高度
 *
 *  @param label UILabel对象
 *
 *  @return 高度
 */
+(CGFloat)autoLabelHeight:(UILabel*)label{
    if(!label)
    {
        NSLog(@"自动计算标签的高度,标签对象为nil");
        return 0;
    }
    else
    {
        NSDictionary *attribute = @{NSFontAttributeName:label.font};
        CGSize size = [label.text boundingRectWithSize:CGSizeMake(label.frame.size.width, MAXFLOAT)
                                               options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                            attributes:attribute
                                               context:nil].size;
        return size.height;
    }
}

/**
 *  自动计算字符串宽度
 *
 *  @param str NSString 对象字符串
 *
 *  @return 宽度
 */
+(CGFloat)autoStringWidth:(NSString*)str textFont:(UIFont*)font heightShow:(CGFloat)height{
    if(!str)
    {
        NSLog(@"自动计算标签的高度,标签对象为nil");
        return 0;
    }
    else
    {
        NSDictionary *attribute = @{NSFontAttributeName:font};
        CGSize size = [str boundingRectWithSize:CGSizeMake(MAXFLOAT, height)
                                        options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                     attributes:attribute
                                        context:nil].size;
        return size.width + .5;
    }
}

/**
 *  自动计算字符串高度
 *
 *  @param str NSString 对象字符串
 *
 *  @return 高度
 */
+(CGFloat)autoStringHeight:(NSString*)str textFont:(UIFont*)font widthShow:(CGFloat)width{
    if(!str)
    {
        NSLog(@"自动计算标签的高度,标签对象为nil");
        return 0;
    }
    else
    {
        NSDictionary *attribute = @{NSFontAttributeName:font};
        CGSize size = [str boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                        options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                     attributes:attribute
                                        context:nil].size;
        return size.height + .5;
    }
}
@end
