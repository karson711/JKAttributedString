//
//  ViewController.m
//  JKAttributedString
//
//  Created by kunge on 2018/6/11.
//  Copyright © 2018年 kunge. All rights reserved.
//

#import "ViewController.h"
#import "AXAttributedString.h"

@interface ViewController ()

@property(nonatomic,strong)UILabel *attributedStringLabel;

@end

@implementation ViewController

#pragma mark Lazy
-(UILabel *)attributedStringLabel{
    if (!_attributedStringLabel) {
        _attributedStringLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 200, 100)];
        _attributedStringLabel.backgroundColor = UIColor.yellowColor;
        _attributedStringLabel.numberOfLines = 0;
        _attributedStringLabel.attributedText = [AXAttributedString makeAttributedString:^(AXAttributedStringMaker *make) {
            make.text(@"第一段").foregroundColor(UIColor.blackColor).font([UIFont systemFontOfSize:14]).underline(NSUnderlineStyleSingle);
            make.text(@"第二段").font([UIFont systemFontOfSize:18]).foregroundColor(UIColor.blueColor).backgroundColor(UIColor.lightGrayColor);
            make.text(@"第三段").foregroundColor(UIColor.orangeColor).font([UIFont boldSystemFontOfSize:20]).strike(NSUnderlineStyleThick).strikeColor(UIColor.orangeColor);
            make.text(@"\n");
            make.text(@"第四段").foregroundColor(UIColor.brownColor).font([UIFont boldSystemFontOfSize:30]).baseline(-15);
        }];
    }
    return _attributedStringLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.attributedStringLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
