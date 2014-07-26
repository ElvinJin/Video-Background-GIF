//
//  ViewController.swift
//  VideoBackground.swift
//
//  Created by Peng Jin on 25/7/14.
//  Copyright (c) 2014 elvinjin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var filePath = NSBundle.mainBundle().pathForResource("railway", ofType: "gif")
        var gif = NSData(contentsOfFile: filePath)
        
        var webViewBG = UIWebView(frame: self.view.frame)
        webViewBG.loadData(gif, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        webViewBG.userInteractionEnabled = false;
        self.view.addSubview(webViewBG)
        
        var filter = UIView()
        filter.frame = self.view.frame
        filter.backgroundColor = UIColor.blackColor()
        filter.alpha = 0.05
        self.view.addSubview(filter)
        
        var welcomeLabel = UILabel(frame: CGRectMake(0, 100, self.view.bounds.size.width, 100))
        welcomeLabel.text = "WELCOME"
        welcomeLabel.textColor = UIColor.whiteColor()
        welcomeLabel.font = UIFont.systemFontOfSize(50)
        welcomeLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(welcomeLabel)
        
        var loginBtn = UIButton(frame: CGRectMake(40, 360, 240, 40))
        loginBtn.layer.borderColor = UIColor.whiteColor().CGColor
        loginBtn.layer.borderWidth = 2
        loginBtn.titleLabel.font = UIFont.systemFontOfSize(24)
        loginBtn.tintColor = UIColor.whiteColor()
        loginBtn.setTitle("Login", forState: UIControlState.Normal)
        self.view.addSubview(loginBtn)
        
        var signUpBtn = UIButton(frame: CGRectMake(40, 420, 240, 40))
        signUpBtn.layer.borderColor = UIColor.whiteColor().CGColor
        signUpBtn.layer.borderWidth = 2
        signUpBtn.titleLabel.font = UIFont.systemFontOfSize(24)
        signUpBtn.tintColor = UIColor.whiteColor()
        signUpBtn.setTitle("Sign Up", forState: UIControlState.Normal)
        self.view.addSubview(signUpBtn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }


}

