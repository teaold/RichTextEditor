//
//  WGUIWebViewPool.m
//  ArTreePro
//
//  Created by niexiaobo on 2019/1/21.
//  Copyright © 2019 上海翼树网络科技. All rights reserved.
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

- (UIWebView *)webView{
    if (!_webView) {
        _webView = [[UIWebView alloc] init];
        NSString *path = [[NSBundle mainBundle] bundlePath];
        NSURL *baseURL = [NSURL fileURLWithPath:path];
        NSString * htmlPath = [[NSBundle mainBundle] pathForResource:@"richText_editor"                                                              ofType:@"html"];
        NSString * htmlCont = [NSString stringWithContentsOfFile:htmlPath
                                                        encoding:NSUTF8StringEncoding
                                                           error:nil];
        [_webView loadHTMLString:htmlCont baseURL:baseURL];
        _webView.scrollView.bounces=NO;
        
    }
    return _webView;
}

@end
