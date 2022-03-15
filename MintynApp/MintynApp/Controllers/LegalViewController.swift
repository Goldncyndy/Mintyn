//
//  LegalViewController.swift
//  MintynApp
//
//  Created by Decagon on 15/03/2022.
//

import UIKit

class LegalViewController: UIViewController {
  
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
    }
  func setupViewConstriants() {
    
    NSLayoutConstraint.activate ([
      // MARK: - welcome label Constraints
      welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
      welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
      welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100)
      ])
  }
}
