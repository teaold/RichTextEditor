//
//  YSHtmlEditBaseVCtrl.h
//  ArTreePro
//
//  Created by niexiaobo on 2019/1/16.
//  Copyright © 2019 . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WGUIWebViewPool.h"


#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

/*
 高度变化             Normal Height     iPhoneX Height
 UINavigationBar     64                 88
 UIStatusBar         20                 44
 UITabbar            49                 83
 */

//根据屏幕像素
//#define IS_IPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ?(CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) || CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) || CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) ? 1 : 0) : 0)

//根据宽高: 异性全面屏
#define IS_IPhoneX ((SCREEN_WIDTH == 375.f && SCREEN_HEIGHT == 812.f ? YES : NO) || (SCREEN_WIDTH == 414.f && SCREEN_HEIGHT == 896.f ? YES : NO))

#define SCREEN_Y (IS_IPhoneX ? 88 : 64)   //距离顶部导航高度
#define SCREEN_Top_Y (IS_IPhoneX ? 24 : 0) //距离顶部高度0
#define SCREEN_Bar_H (IS_IPhoneX ? 44 : 20) //状态栏高度
#define SCREEN_Nav_H (IS_IPhoneX ? 88 : 64) //导航高度
#define SCREEN_Nav_Content_H (IS_IPhoneX ? 44 : 44)
#define SCREEN_B_Y (IS_IPhoneX ? -83 : -49) //约束距离底部高度值
#define SCREEN_B_H (IS_IPhoneX ? 83 : 49) //底部高度
#define SCREEN_B_0 (IS_IPhoneX ? 34 : 0) ////距离底部
#define DISCOVER_TOPBAR (IS_IPhoneX ? 114 : 86)   //距离顶部导航高度

#define SCREEN_keyboard_H (IS_IPhoneX ? 334 : 300) //键盘高度
#define PlusSizeX SCREEN_WIDTH/375/2

#define COLOR(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a] //颜色RGB

//弱引用
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
#define WST(strongWSelf)  __strong __typeof(&*self)strongWSelf = weakSelf;


@interface YSHtmlEditBaseVCtrl : UIViewController
@property(nonatomic,strong)void (^onChangeContentBlock)(NSString *);//回调
@end

