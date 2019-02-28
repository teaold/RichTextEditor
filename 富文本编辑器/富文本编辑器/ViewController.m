//
//  ViewController.m
//  富文本编辑器
//
//  Created by niexiaobo on 2019/2/26.
//  Copyright © 2019 NXB. All rights reserved.
//

#import "ViewController.h"
#import "YSHtmlEditBaseVCtrl.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *text = [[UILabel alloc]initWithFrame:self.view.bounds];
    text.textAlignment = 1;
    text.text = @"开始编辑文章";
    [self.view addSubview:text];
    
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    //提前渲染webview
    [[WGUIWebViewPool sharedInstance] preLoadWebView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    YSHtmlEditBaseVCtrl *vc = [[YSHtmlEditBaseVCtrl alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
