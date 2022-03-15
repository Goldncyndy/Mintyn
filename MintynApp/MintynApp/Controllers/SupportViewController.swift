//
//  SupportViewController.swift
//  MintynApp
//
//  Created by Decagon on 13/03/2022.
//

import UIKit

class SupportViewController: UIViewController {
  
  // MARK: - WELCOME LABEL SETUP VIEW
  let viewLabel: UILabel = {
    let label = UILabel()
    label.text = "Support Page"
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 20)
    label.textAlignment = .center
    label.textColor = .black
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  // MARK: - Banner CARD VIEW
  let BannerCardView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.layer.cornerRadius = 25.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  // MARK: - CARD VIEW 
  let CardView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.layer.cornerRadius = 25.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

    override func viewDidLoad() {
        super.viewDidLoad()
      
      view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
      setupViewConstriants()
    }
  
  func setupViewConstriants() {
    view.addSubview(viewLabel)
    view.addSubview(BannerCardView)
    view.addSubview(CardView)
    
    
    NSLayoutConstraint.activate ([
      // MARK: - welcome label Constraints
      viewLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
      viewLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
      viewLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
      // MARK: - insurance Card Constraints
      BannerCardView.topAnchor.constraint(equalTo: viewLabel.bottomAnchor, constant: 30),
      BannerCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      BannerCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      BannerCardView.heightAnchor.constraint(equalToConstant: 150),
      // MARK: - page View Constraints
      CardView.topAnchor.constraint(equalTo: BannerCardView.bottomAnchor, constant: 100),
      CardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 2),
      CardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -2),
      CardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
    ])
      }
}
