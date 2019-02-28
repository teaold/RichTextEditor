//
//  WGUIWebViewPool.m
//  ArTreePro
//
//  Created by niexiaobo on 2019/1/21.
//  Copyright © 2019 . All rights reserved.
//

#import "WGUIWebViewPool.h"

@implementation WGUIWebViewPool
+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static WGUIWebViewPool *instance = nil;
    dispatch_once(&onceToken,^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self sharedInstance];
}

- (NSMutableArray *)preWebArray {
    if (!_preWebArray) {
        _preWebArray = @[].mutableCopy;
        
    }
    return _preWebArray;
}

- (void)preLoadWebView {
    if (!_webView) {
        self.webView.hidden = NO;
    }
}

- (UIWebView *)webView{
    if (!_webView) {
        _webView = [[UIWebView alloc] init];
        _webView.scrollView.bounces=NO;
    }
    return _webView;
}

@end
