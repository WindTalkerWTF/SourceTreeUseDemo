//
//  MainViewController.m
//  Demo
//
//  Created by Apple on 16/10/20.
//  Copyright © 2016年 Big Nerd Ranch. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super init]) {
        self.view.frame = frame;
        self.view.backgroundColor = [UIColor orangeColor];
    }
    return  self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"初始化项目");
    NSLog(@"刚刚使用的是Xcode自带的版本管理工具,现在使用Sourcetree.");
    
    [self createButton];
    [self setupNavi];
}

- (void)setupNavi{
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = leftBtn;
}

- (void)back {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)createButton{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 300, 100);
    btn.backgroundColor = [UIColor whiteColor];
    btn.titleLabel.text = @"我是警察啊~!\n谁知道?";
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    btn.titleLabel.font = [UIFont systemFontOfSize:20];
    btn.titleLabel.textColor = [UIColor redColor];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
