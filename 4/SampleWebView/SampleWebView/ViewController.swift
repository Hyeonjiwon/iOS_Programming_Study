//
//  ViewController.swift
//  SampleWebView
//
//  Created by 현지원 on 2021/03/09.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var WebViewMain: WKWebView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1. url string 찾기
        let urlString = "https://www.google.com"
        
        // string을 url 데이터타입으로 변경
        if let url = URL(string: urlString) { //unwrapping
            
            // 2. url > request
            let urlReq = URLRequest(url: url)
            
            // 3. request > road
            WebViewMain.load(urlReq)
        }
        
    
    }


}

