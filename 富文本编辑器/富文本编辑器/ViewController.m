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
    
    
//    NSString *htmlStr = [self matchImgHtmlString:@"<img id=\"7F41A7AE-398B-4CD1-A756-15906A33C44A-img\" class=\"real-img\" src=\"http://rs.test.artreedu.com//assets/rich/2019/02/27/70ed9c51-f790-41fb-b73c-2168a551f281.jpg\">"];
//    NSLog(@"%@",htmlStr);
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    YSHtmlEditBaseVCtrl *vc = [[YSHtmlEditBaseVCtrl alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
//
//#pragma mark- 导出html
//- (void)getHTMLText{
//    __block NSString *htmlStr = @"<div id=\"7F41A7AE\">div内容信息</div><p>过滤掉无效视图1</p><div class=\"real-img-f-div\" id=\"7F41A7AE-398B-4CD1-A756-15906A33C44A-img\" ><img id=\"7F41A7AE-398B-4CD1-A756-15906A33C44A-img\" class=\"real-img\" src=\"http://rs.test.artreedu.com//assets/rich/2019/02/27/70ed9c51-f790-41fb-b73c-2168a551f281.jpg\"><img id=\"7F41A7AE-398B-4CD1-A756-15906A33C44A-img\" src=\"data:image/png;base64,/9j/4AAgAoAKAP/2Q==\" class=\"real-img-delete\"></div><p>过滤掉无效视图2</p><div id=\"7F41A7AE\">div内容信息</div>";
//    //过滤掉无效视图
//    /*
//     <div class="real-img-f-div" id="7F41A7AE-398B-4CD1-A756-15906A33C44A-img" ><img id="7F41A7AE-398B-4CD1-A756-15906A33C44A-img" class="real-img" src="http://rs.test.artreedu.com//assets/rich/2019/02/27/70ed9c51-f790-41fb-b73c-2168a551f281.jpg"><img id="7F41A7AE-398B-4CD1-A756-15906A33C44A-img" src="data:image/png;base64,/9j/4AAgAoAKAP/2Q==" style="width:30px;height:30px;position:absolute;right:10px;top:10px"></div>
//
//     */
//    NSString *divReg = @"<div[^>]*>.*?</div>";
//
//    NSArray*divArray = [self matchString:htmlStr toRegexString:divReg];
//    if (divArray.count > 0) {
//        [divArray enumerateObjectsUsingBlock:^(NSString *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            if (obj.length > 0 && [obj containsString:@"class=\"real-img-f-div\""]) {
//                NSString *imgReg = @"<img[^>]*>";
//                NSArray*imgArray = [self matchString:obj toRegexString:imgReg];
//                [imgArray enumerateObjectsUsingBlock:^(NSString *  _Nonnull obj2, NSUInteger idx, BOOL * _Nonnull stop) {
//                    if (obj2.length > 0 && ![obj2 containsString:@"class=\"real-img-delete\""]) {
//                        htmlStr = [htmlStr stringByReplacingOccurrencesOfString:obj withString:obj2];
//                    }
//                }];
//            }
//        }];
//    }
//
//
//    NSLog(@"%@",htmlStr);
//
//    //NSLog(@"%@",[self.webView contentHtmlText]);
//
//}
//
////获取IMG标签
//-(NSArray*)getImgDivTags:(NSString *)htmlText
//{
//    if (htmlText == nil) {
//        return nil;
//    }
//    NSError *error;
//    //NSString *regulaStr = @"<img[^>]+src\\s*=\\s*['\"]([^'\"]+)['\"][^>]*>";
//    NSString *regulaStr = @"<div class=\"real-img-f-div\"";
//    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regulaStr
//                                                                           options:NSRegularExpressionCaseInsensitive
//                                                                             error:&error];
//    NSArray *arrayOfAllMatches = [regex matchesInString:htmlText options:0 range:NSMakeRange(0, [htmlText length])];
//
//    return arrayOfAllMatches;
//}
//
//#pragma mark- 正则匹配
//- (NSArray *)matchString:(NSString *)string toRegexString:(NSString *)regexStr {
//    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regexStr options:NSRegularExpressionCaseInsensitive error:nil];
//
//    NSArray * matches = [regex matchesInString:string options:0 range:NSMakeRange(0, [string length])];
//    //match: 所有匹配到的字符,根据() 包含级
//    NSMutableArray *array = [NSMutableArray array];
//
//    for (NSTextCheckingResult *match in matches) {
//        for (int i = 0; i < [match numberOfRanges]; i++) {
//            //以正则中的(),划分成不同的匹配部分
//            NSString *component = [string substringWithRange:[match rangeAtIndex:i]];
//
//            [array addObject:component];
//        }
//    }
//    return array;
//}
//
////获取IMG标签
//-(NSArray*)getMatchMsgWithRegulaStr:(NSString *)regulaStr htmlText:(NSString *)htmlText
//{
//    if (htmlText == nil) {
//        return nil;
//    }
//    NSError *error;
//    //NSString *regulaStr = @"<img[^>]+src\\s*=\\s*['\"]([^'\"]+)['\"][^>]*>";
//    //NSString *regulaStr = @"<div class=\"real-img-f-div\"";
//    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regulaStr
//                                                                           options:NSRegularExpressionCaseInsensitive
//                                                                             error:&error];
//    NSArray *arrayOfAllMatches = [regex matchesInString:htmlText options:0 range:NSMakeRange(0, [htmlText length])];
//
//    return arrayOfAllMatches;
//}
////@"<img id=\"7F41A7AE-398B-4CD1-A756-15906A33C44A-img\" class=\"real-img\" src=\"http://rs.test.artreedu.com//assets/rich/2019/02/27/70ed9c51-f790-41fb-b73c-2168a551f281.jpg\">"
////replace(/<img[^>]*>/g, "[图片]");
//- (NSString *)matchImgHtmlString:(NSString *)string {
//    if (!string || string.length == 0) {
//        return @"";
//    }
//    //NSString *imgReg = @"<img[^>]*>";
//    //NSString *divReg = @"<div[^>]*>.*?</div>";
//    NSString *imgReg = @"id=\".*?\"";
//
//    NSRegularExpression *regularExpretion=[NSRegularExpression regularExpressionWithPattern:imgReg
//                                                                                    options:0
//                                                                                      error:nil];
//    string=[regularExpretion stringByReplacingMatchesInString:string options:NSMatchingReportProgress range:NSMakeRange(0, string.length) withTemplate:@"[DIV-img]"];
//
//    return string;
//}

@end
