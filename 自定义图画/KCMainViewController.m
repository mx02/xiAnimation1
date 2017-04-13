//
//  KCMainViewController.m
//  xiAnimation
//
//  Created by mxbj on 2017/4/11.
//  Copyright © 2017年 Animation. All rights reserved.
//

#import "KCMainViewController.h"
#import "KCView.h"

@interface KCMainViewController ()

@end

@implementation KCMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    KCView *view=[[KCView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    view.backgroundColor=[UIColor colorWithRed:249.0/255.0 green:249.0/255.0 blue:249.0/255.0 alpha:1];
    
    
    [self.view addSubview:view];
}


@end
