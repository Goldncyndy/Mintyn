//
//  LegalViewController.swift
//  MintynApp
//
//  Created by Decagon on 15/03/2022.
//

import UIKit
import WebKit

class LegalViewController: UIViewController, WKUIDelegate {
  
  var webView: WKWebView!
  
  // MARK: - WELCOME LABEL SETUP VIEW
  let welcomeLabel: UILabel = {
    let label = UILabel()
    label.text = "Legal"
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 20)
    label.textAlignment = .center
    label.textColor = .black
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

    override func viewDidLoad() {
        super.viewDidLoad()
      view.backgroundColor = .white
      view.addSubview(welcomeLabel)
      setupViewConstriants()
      
      let myURL = URL(string:"https://mintyn.com/terms")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
         }
         override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
         }
    
  func setupViewConstriants() {
    
    NSLayoutConstraint.activate ([
      // MARK: - welcome label Constraints
      welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
      welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      ])
  }
}
