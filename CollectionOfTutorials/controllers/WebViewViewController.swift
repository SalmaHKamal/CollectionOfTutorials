//
//  WebViewViewController.swift
//  CollectionOfTutorials
//
//  Created by Salma Hassan on 4/11/19.
//  Copyright © 2019 salma. All rights reserved.
//

import UIKit
import WebKit

class WebViewViewController: UIViewController , WKNavigationDelegate{

    var webView : WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = URL(string: "https://ioscreator.com") {
            webView.load(URLRequest(url: url))
        }
        
        
        // 2
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
        
    }
    
    //webview delegate methods
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    
    
  

}
