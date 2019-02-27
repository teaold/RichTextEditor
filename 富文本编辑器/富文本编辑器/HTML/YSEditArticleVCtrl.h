//
//  YSEditArticleVCtrl.h
//  ArTreePro
//
//  Created by niexiaobo on 2018/5/3.
//  Copyright © 2018年 上海翼树网络科技. All rights reserved.
//

#import "BaseWebViewController.h"

@interface YSEditArticleVCtrl : BaseViewController
@property (nonatomic, strong)NSString *contentStr;
@property(nonatomic,strong)void (^onChangeStateBlock)(id);//回调
@end
