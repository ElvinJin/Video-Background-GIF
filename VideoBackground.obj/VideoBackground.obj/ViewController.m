//
//  ViewController.m
//  VideoBackground.obj
//
//  Created by Peng Jin on 25/7/14.
//  Copyright (c) 2014 elvinjin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webViewBG;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *signUpButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *htmlPath = [[NSBundle mainBundle] pathForResource:@"WebViewContent" ofType:@"html"];
    NSURL *htmlURL = [[NSURL alloc] initFileURLWithPath:htmlPath];
    NSData *htmlData = [[NSData alloc] initWithContentsOfURL:htmlURL];
    
    [self.webViewBG loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:[htmlURL URLByDeletingLastPathComponent]];
    
    self.loginButton.layer.borderColor = [[UIColor whiteColor] CGColor];
    self.loginButton.layer.borderWidth = 2.0;
    
    self.signUpButton.layer.borderColor = [[UIColor whiteColor] CGColor];
    self.signUpButton.layer.borderWidth = 2.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
