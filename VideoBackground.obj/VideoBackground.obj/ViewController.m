//
//  ViewController.m
//  VideoBackground.obj
//
//  Created by Peng Jin on 25/7/14.
//  Copyright (c) 2014 elvinjin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"railway" ofType:@"gif"];
    NSData *gif = [NSData dataWithContentsOfFile:filePath];
    
    UIWebView *webViewBG = [[UIWebView alloc] initWithFrame:self.view.frame];
    [webViewBG loadData:gif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    [self.view addSubview:webViewBG];
    
    UIView *filter = [[UIView alloc] initWithFrame:self.view.frame];
    filter.backgroundColor = [UIColor blackColor];
    filter.alpha = 0.05;
    [self.view addSubview:filter];
    
    UILabel *welcomeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 100)];
    welcomeLabel.text = @"WELCOME";
    welcomeLabel.textColor = [UIColor whiteColor];
    welcomeLabel.font = [UIFont systemFontOfSize:50];
    welcomeLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:welcomeLabel];
    
    UIButton *loginBtn = [[UIButton alloc] initWithFrame:CGRectMake(40, 360, 240, 40)];
    loginBtn.layer.borderColor = [[UIColor whiteColor] CGColor];
    loginBtn.layer.borderWidth = 2.0;
    loginBtn.titleLabel.font = [UIFont systemFontOfSize:24];
    [loginBtn setTintColor:[UIColor whiteColor]];
    [loginBtn setTitle:@"Login" forState:UIControlStateNormal];
    [self.view addSubview:loginBtn];
    
    UIButton *signUpBtn = [[UIButton alloc] initWithFrame:CGRectMake(40, 420, 240, 40)];
    signUpBtn.layer.borderColor = [[UIColor whiteColor] CGColor];
    signUpBtn.layer.borderWidth = 2.0f;
    signUpBtn.titleLabel.font = [UIFont systemFontOfSize:24];
    [signUpBtn setTintColor:[UIColor whiteColor]];
    [signUpBtn setTitle:@"Sign Up" forState:UIControlStateNormal];
    [self.view addSubview:signUpBtn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
