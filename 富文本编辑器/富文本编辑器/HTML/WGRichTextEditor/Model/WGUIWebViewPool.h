//
//  WGUIWebViewPool.h
//  ArTreePro
//
//  Created by niexiaobo on 2019/1/21.
//  Copyright © 2019 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface WGUIWebViewPool : NSObject
+ (instancetype)sharedInstance;
@property (nonatomic,strong) UIWebView *webView;
@property(nonatomic,strong) NSMutableArray *preWebArray;//webView预加载
@end

