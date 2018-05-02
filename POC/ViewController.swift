//
//  ViewController.swift
//  POC
//
//  Created by Maveric Systems on 23/04/18.
//  Copyright © 2018 Maveric Systems. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate
{
    var numberOfClicks : Int = 0

    @IBOutlet weak var webViewInstance: WKWebView!
    @IBOutlet weak var buttonPutup: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        let url : URL = URL.init(string: "https://login.microsoftonline.com/")!
        let urlRequest : URLRequest = URLRequest.init(url: url)
        self.webViewInstance.navigationDelegate = self;
        self.webViewInstance.load(urlRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(_ sender: Any)
    {
        numberOfClicks += 1;
        self.buttonPutup.setTitle("\(numberOfClicks)", for: UIControlState.normal)
    }
    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!)
    {
        print("web view loaded the request");
    }
    
    public func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!)
    {
        print("web view didCommit the request");
    }

    
}

