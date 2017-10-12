//
//  ViewController.m
//  ScanDemo
//
//  Created by Caoyq on 16/4/7.
//  Copyright © 2016年 Caoyq. All rights reserved.
//

#import "ViewController.h"
#import "BeforeScanSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"扫码类型";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)QQStyleClicked:(id)sender {
    [[BeforeScanSingleton shareScan] ShowSelectedType:QQStyle WithViewController:self];
}

- (IBAction)AlipayStyleClicked:(id)sender {
    [[BeforeScanSingleton shareScan] ShowSelectedType:AliPayStyle WithViewController:self];
}

- (IBAction)WeChatStyleClicked:(id)sender {
    [[BeforeScanSingleton shareScan] ShowSelectedType:WeChatStyle WithViewController:self];
}

@end
