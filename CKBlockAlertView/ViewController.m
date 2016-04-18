//
//  ViewController.m
//  CKBlockAlertView
//
//  Created by hc_cyril on 16/4/18.
//  Copyright © 2016年 Clark. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertView+BlockAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setUpTapBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private method

- (void)setUpTapBtn {

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.frame = self.view.bounds;
    btn.backgroundColor = [UIColor colorWithRed:0.2059 green:0.4037 blue:0.4354 alpha:1.0];
    [btn setTitle:@"Show alert view" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(testBlockAlertView) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)testBlockAlertView {

    /**
     iOS8以上可以用UIViewController代替UIAlertView
     */
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"CKBlockAlertView" message:@"blockCallBack" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    alertView.callBack = ^(UIAlertView *alertView, NSInteger index) {
    
        NSLog(@"alerView did click for index = %ld",(long)index);
    };
    [alertView show];
    
}

@end
