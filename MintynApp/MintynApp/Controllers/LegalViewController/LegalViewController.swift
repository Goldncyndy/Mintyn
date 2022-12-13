//
//  LegalViewController.swift
//  MintynApp
//
//  Created by Decagon on 15/03/2022.
//

import UIKit


class LegalViewController: UIViewController {
  
  // MARK: - WELCOME LABEL SETUP VIEW
  let legalLabel: UILabel = {
    let label = UILabel()
    label.text = "Legal"
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 20)
    label.textAlignment = .center
    label.textColor = .black
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  lazy var accountLabel: UILabel = {
    let textLabel = UILabel()
    textLabel.text = "Mintyn Account - Terms & Condition"
    textLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
    textLabel.textAlignment = .left
    textLabel.textColor = .black
    textLabel.translatesAutoresizingMaskIntoConstraints = false
    return textLabel
  }()
  lazy var forwardButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .clear
    button.heightAnchor.constraint(equalToConstant: 15).isActive = true
    button.widthAnchor.constraint(equalToConstant: 13).isActive = true
    button.setBackgroundImage(UIImage(named: "forward"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(accountViewTapped), for: .touchUpInside)
    button.clipsToBounds = true
    return button
  }()
  lazy var accountStack: UIStackView = {
    let spacer = UIView()
    let stackView = UIStackView(arrangedSubviews: [accountLabel, forwardButton])
    stackView.axis = .horizontal
    stackView.distribution = .fill
    stackView.spacing = 20
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()

  lazy var privacyLabel: UILabel = {
    let textLabel = UILabel()
    textLabel.text = "Mintyn Privacy Policy"
    textLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
    textLabel.textAlignment = .left
    textLabel.textColor = .black
    textLabel.translatesAutoresizingMaskIntoConstraints = false
    return textLabel
  }()
  lazy var privacyButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .clear
    button.heightAnchor.constraint(equalToConstant: 15).isActive = true
    button.widthAnchor.constraint(equalToConstant: 13).isActive = true
    button.setBackgroundImage(UIImage(named: "forward"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(didTapPrivacyStack), for: .touchUpInside)
    button.clipsToBounds = true
    return button
  }()
  lazy var privacyStack: UIStackView = {
    let spacer = UIView()
    let stackView = UIStackView(arrangedSubviews: [privacyLabel, privacyButton])
    stackView.axis = .horizontal
    stackView.distribution = .fill
    stackView.spacing = 20
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  lazy var goalLabel: UILabel = {
    let textLabel = UILabel()
    textLabel.text = " Saving Goal - Terms & Condition"
    textLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
    textLabel.textAlignment = .left
    textLabel.textColor = .black
    textLabel.translatesAutoresizingMaskIntoConstraints = false
    return textLabel
  }()
  lazy var goalButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .clear
    button.heightAnchor.constraint(equalToConstant: 15).isActive = true
    button.widthAnchor.constraint(equalToConstant: 13).isActive = true
    button.setBackgroundImage(UIImage(named: "forward"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(didTapGoalStack), for: .touchUpInside)
    button.clipsToBounds = true
    return button
  }()
  lazy var goalStack: UIStackView = {
    let spacer = UIView()
    let stackView = UIStackView(arrangedSubviews: [goalLabel, goalButton])
    stackView.axis = .horizontal
    stackView.distribution = .fill
    stackView.spacing = 20
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  override func viewDidLoad() {
      super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(legalLabel)
    view.addSubview(accountStack)
    view.addSubview(privacyStack)
    view.addSubview(goalStack)
    setupViewConstriants()
    
    let click = UITapGestureRecognizer.init(target: self, action: #selector(accountViewTapped))
    accountStack.addGestureRecognizer(click)
    
    let clickMe = UITapGestureRecognizer.init(target: self, action: #selector(didTapPrivacyStack))
    privacyStack.addGestureRecognizer(clickMe)
    
    let tap = UITapGestureRecognizer.init(target: self, action: #selector(didTapGoalStack))
    goalStack.addGestureRecognizer(tap)
  }
  
  
  func setupViewConstriants() {
    
    NSLayoutConstraint.activate ([
      // MARK: - welcome label Constraints
      legalLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
      legalLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      
      accountStack.topAnchor.constraint(equalTo: legalLabel.bottomAnchor, constant: 30),
      accountStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      accountStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      accountStack.heightAnchor.constraint(equalToConstant: 30),
      
      privacyStack.topAnchor.constraint(equalTo: accountStack.bottomAnchor, constant: 30),
      privacyStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      privacyStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      privacyStack.heightAnchor.constraint(equalToConstant: 30),
      
      goalStack.topAnchor.constraint(equalTo: privacyStack.bottomAnchor, constant: 30),
      goalStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      goalStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      goalStack.heightAnchor.constraint(equalToConstant: 30),
      
      ])
  }
  
  @objc func accountViewTapped() {
    navigationController?.pushViewController(MintynAccountViewController(), animated: true)
  }
  
  @objc func didTapPrivacyStack() {
    navigationController?.pushViewController(MintynPrivacyViewController(), animated: true)
  }
  
  @objc func didTapGoalStack() {
    navigationController?.pushViewController(SavingGoalViewController(), animated: true)
  }
   
}
