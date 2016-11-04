//
//  ViewController.m
//  Demo
//
//  Created by Apple on 16/10/20.
//  Copyright © 2016年 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"
#import "MainViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)nextPage:(UIButton *)sender {
    MainViewController *main = [[MainViewController alloc]initWithFrame:self.view.bounds];
    [self.navigationController pushViewController:main animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
