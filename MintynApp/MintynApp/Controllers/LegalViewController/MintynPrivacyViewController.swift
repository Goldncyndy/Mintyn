//
//  MintynPrivacyViewController.swift
//  MintynApp
//
//  Created by Pheonix on 13/12/2022.
//

import UIKit
import WebKit

class MintynPrivacyViewController: UIViewController, WKUIDelegate {

  var webView: WKWebView!
  
  // MARK: - WELCOME LABEL SETUP VIEW
  let infoLabel: UILabel = {
    let label = UILabel()
    label.text = "Privacy Policy"
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
      view.addSubview(infoLabel)
      setupViewConstriants()
      
      let myURL = URL(string:"https://mintyn.com/privacy-policy")
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
      infoLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
      infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      ])
  }
}
