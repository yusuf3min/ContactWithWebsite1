//
//  ViewController.swift
//  assaofismobiluygulama
//
//  Created by yusufeminguney on 25.07.2024.
//

import UIKit
import WebKit
class ViewController: UIViewController {
    @IBOutlet weak var webview: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setInitViews()
    }
    
    private func setInitViews(){
        webview.navigationDelegate = self
        let loadUrl = "https://udemig.com/"
        let url = URL(string: loadUrl)!
        webview.load(URLRequest(url: url))
        webview.allowsBackForwardNavigationGestures = true
        
    }
    


}
extension ViewController:WKNavigationDelegate{
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: any Error) {
        activityIndicator.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}

