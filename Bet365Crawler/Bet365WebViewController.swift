//
//  Bet365WebViewController.swift
//  Bet365Crawler
//
//  Created by GeorgeN on 08/11/2020.
//

import UIKit
import WebKit
import SnapKit
import SwiftSoup

class Bet365WebViewController: UIViewController {
//    let stringURL = "https://www.bet365.com.cy/#/HO/"
    let stringURL = "https://www.bet365.com.cy/#/AS/B1/"
    
    var leagues: [Elements.Element] = [Element(Tag("div"), "", Attributes.init())]
    
    lazy var webview: WKWebView = {
        let w = WKWebView()
        w.uiDelegate = self
        w.navigationDelegate = self
        return w
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addBarButton()
        setupWebRequest()
    }
    
    func setupView() {
        view.addSubview(webview)
        webview.snp.makeConstraints({
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        })
    }
    
    func setupWebRequest() {
        guard let url = URL(string: stringURL) else { return }
        let urlRequest = URLRequest(url: url)
        webview.load(urlRequest)
    }
    
    func addBarButton() {
        let barItem = UIBarButtonItem(barButtonSystemItem: .play, target: self, action: #selector(barButtonAction))
        navigationItem.rightBarButtonItem = barItem
    }
    
    @objc func barButtonAction() {
        
    }
}


extension Bet365WebViewController: WKUIDelegate, WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        waitLoadingToStopAndParseHTML { (html) in
            guard let doc = try? SwiftSoup.parse(html),
                  let leagues = try? doc.getElementsByClass("sm-CouponLink").array()
            else { return }

            self.clickOnElement(leagues[1])
        }
    }
    
    
    func waitLoadingToStopAndParseHTML(completion: @escaping (_ html: String) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.webview.evaluateJavaScript("document.getElementsByTagName('html')[0].innerHTML") { (result, error) in
                if let err = error {
                    print(err.localizedDescription)
                } else {
                    guard let html = result as? String else { return }
                    if html.contains("Preloader_Header") {
                        self.waitLoadingToStopAndParseHTML { _ in }
                    } else {
                        completion(html)
                    }
                }
            }
        }
    }
    
    func clickOnElement(_ element: Elements.Element?) {
        guard let element = element,
              let elementClass = try? element.className()
        else { return }
        print(element)
        print(elementClass)
        webview.evaluateJavaScript("document.querySelector('.\(elementClass)').click();") { (result, error) in
            if let err = error {
                print(err.localizedDescription)
            }
        }
    }
}
