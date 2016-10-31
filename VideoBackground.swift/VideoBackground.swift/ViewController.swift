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
        
        let filePath = Bundle.main.path(forResource: "railway", ofType: "gif")
        let gifURL = URL(fileURLWithPath: filePath!)
        let gif = try? Data(contentsOf: gifURL)
        
        let webViewBG = UIWebView(frame: self.view.frame)
        webViewBG.load(gif!, mimeType: "image/gif", textEncodingName: String(), baseURL: gifURL.deletingLastPathComponent())
        webViewBG.isUserInteractionEnabled = false;
        self.view.addSubview(webViewBG)
        
        let filter = UIView()
        filter.frame = self.view.frame
        filter.backgroundColor = UIColor.black
        filter.alpha = 0.05
        self.view.addSubview(filter)
        
        let welcomeLabel = UILabel(frame: CGRect(x: 0, y: 100, width: self.view.bounds.size.width, height: 100))
        welcomeLabel.text = "WELCOME"
        welcomeLabel.textColor = UIColor.white
        welcomeLabel.font = UIFont.systemFont(ofSize: 50)
        welcomeLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(welcomeLabel)
        
        let loginBtn = UIButton(frame: CGRect(x: 40, y: 360, width: 240, height: 40))
        loginBtn.layer.borderColor = UIColor.white.cgColor
        loginBtn.layer.borderWidth = 2
        loginBtn.titleLabel!.font = UIFont.systemFont(ofSize: 24)
        loginBtn.tintColor = UIColor.white
        loginBtn.setTitle("Login", for: UIControlState())
        self.view.addSubview(loginBtn)
        
        let signUpBtn = UIButton(frame: CGRect(x: 40, y: 420, width: 240, height: 40))
        signUpBtn.layer.borderColor = UIColor.white.cgColor
        signUpBtn.layer.borderWidth = 2
        signUpBtn.titleLabel!.font = UIFont.systemFont(ofSize: 24)
        signUpBtn.tintColor = UIColor.white
        signUpBtn.setTitle("Sign Up", for: UIControlState())
        self.view.addSubview(signUpBtn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }


}

