//
//  ViewController.swift
//  MintynApp
//
//  Created by Decagon on 13/03/2022.
//

import UIKit

class SignInViewController: UIViewController {
  
  // MARK: - WELCOME LABEL SETUP VIEW
  let welcomeLabel: UILabel = {
    let label = UILabel()
    label.text = "Welcome"
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 20)
    label.textAlignment = .center
    label.textColor = .white
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  // MARK: - INSURANCE CARD VIEW
  let insuranceCardView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(red: 0.13, green: 0.13, blue: 0.13, alpha: 1.00)
    view.layer.cornerRadius = 6.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  // MARK: - INSURANCE IMAGE VIEW
  lazy var insuranceImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "shield")
    imageView.layer.cornerRadius = 15.0
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  // MARK: - INSURANCE LABEL SETUP VIEW
  let insuranceLabel: UILabel = {
    let label = UILabel()
    label.text = "Mintyn \nInsurance"
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.font = UIFont.boldSystemFont(ofSize: 14)
    label.textAlignment = .left
    label.textColor = .white
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  // MARK: - OPEN ACCOUNT CARD VIEW 1
  let openAccountCardView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(red: 0.13, green: 0.13, blue: 0.13, alpha: 1.00)
    view.layer.cornerRadius = 6.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  // MARK: - OPEN ACCOUNT IMAGE VIEW
  lazy var openAccountImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "shield")
    imageView.layer.cornerRadius = 15.0
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  // MARK: - OPEN ACCOUNT LABEL SETUP VIEW
  let openAccountLabel: UILabel = {
    let label = UILabel()
    label.text = "Open an\nAccount"
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.font = UIFont.boldSystemFont(ofSize: 14)
    label.textAlignment = .left
    label.textColor = .white
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  // MARK: - REGISTER CARD VIEW 1
  let registerCardView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(red: 0.13, green: 0.13, blue: 0.13, alpha: 1.00)
    view.layer.cornerRadius = 6.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  // MARK: - REGISTER LABEL SETUP VIEW
  let registerLabel: UILabel = {
    let label = UILabel()
    label.text = "Register\nyour Business"
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.font = UIFont.boldSystemFont(ofSize: 14)
    label.textAlignment = .left
    label.textColor = .white
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  // MARK: - REGISTER IMAGE VIEW
  lazy var registerImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "register")
    imageView.layer.cornerRadius = 15.0
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  // MARK: - CONTACT CARD VIEW 1
  let contactCardView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(red: 0.13, green: 0.13, blue: 0.13, alpha: 1.00)
    view.layer.cornerRadius = 6.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  // MARK: - REGISTER LABEL SETUP VIEW
  let contactLabel: UILabel = {
    let label = UILabel()
    label.text = "Contact\nSupport"
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.font = UIFont.boldSystemFont(ofSize: 14)
    label.textAlignment = .left
    label.textColor = .white
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  // MARK: - CONTACT IMAGE VIEW
  lazy var contactImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "callAgent")
    imageView.layer.cornerRadius = 15.0
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  // MARK: - LOGIN CARD VIEW 1
  let loginCardView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(red: 0.13, green: 0.13, blue: 0.13, alpha: 1.00)
    view.layer.cornerRadius = 25.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  // MARK: - PHONE NUMBER LABEL SETUP
  let phoneNumberLabel: UILabel = {
    let label = UILabel()
    label.text = "Phone Number"
    label.textColor = .white
    label.font = UIFont(name: "Helvetica", size: 14)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 14)
    return label
  }()
  
  // MARK: - PASSWORD LABEL SETUP
  let passwordLabel: UILabel = {
    let label = UILabel()
    label.text = "Password"
    label.textColor = .white
    label.font = UIFont(name: "Helvetica", size: 14)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 14)
    return label
  }()
  
  // MARK: - PHONE NUMBER TEXTVIEW SETUP
  lazy var phoneNumberTextView: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.15, alpha: 1.00)
    textField.layer.borderColor =  UIColor.black.cgColor
    textField.keyboardType = .namePhonePad
    textField.layer.cornerRadius = 10
    textField.font = UIFont(name: "Helvetica", size: 12)
    textField.autocapitalizationType = .none
    textField.attributedPlaceholder = NSAttributedString(
      string: "+234 56789012",
      attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
  )
    textField.textColor = .white
    return textField
  }()
  
  let passwordTextField: LeftPaddedTextField = {
      let textField = LeftPaddedTextField()
      textField.translatesAutoresizingMaskIntoConstraints = false
      textField.placeholder = "johnsmith1#"
      textField.textColor = .white
      textField.font = UIFont(name: "Helvetica", size: 12)
      textField.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.15, alpha: 1.00)
      textField.isSecureTextEntry = true
      textField.autocapitalizationType = .none
      textField.layer.cornerRadius = 10
      return textField
  }()
  
  // MARK: - PASSWORD LABEL SETUP
  let rememberMeLabel: UILabel = {
    let label = UILabel()
    label.text = "Remember me"
    label.textColor = .white
    label.font = UIFont(name: "Helvetica", size: 14)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 14)
    return label
  }()
  
  // MARK: - PASSWORD LABEL SETUP
  let forgotPasswordLabel: UILabel = {
    let label = UILabel()
    label.text = "Forgot Password?"
    label.textColor = UIColor(red: 0.67, green: 0.50, blue: 0.22, alpha: 1.00)
    label.font = UIFont(name: "Helvetica", size: 14)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 14)
    return label
  }()
  
  lazy var loginButton: UIButton = {
    let button = UIButton()
    button.setTitle("Login", for: .normal)
    button.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
    button.backgroundColor = UIColor(red: 0.67, green: 0.50, blue: 0.22, alpha: 1.00)
    button.setTitleColor(.black, for: .normal)
    button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 8
    return button
  }()
  
  // MARK: - REGISTER PROMPT FOOTER LABEL SETUP
  let registerNewDeviceLabel: UILabel = {
    let label = UILabel()
    label.text = "Register new device"
    label.textColor = UIColor(red: 0.67, green: 0.50, blue: 0.22, alpha: 1.00)
    label.font = UIFont(name: "Helvetica", size: 15)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 15)
    return label
  }()
  
  // MARK: - POWERED BY INFO LABEL SETUP
  let poweredByLabel: UILabel = {
    let label = UILabel()
    label.text = "Powered by FINEX MFB"
    label.textColor = .white
    label.font = UIFont(name: "Helvetica", size: 12)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 12)
    return label
  }()
  
  // MARK: - POWERED BY INFO LABEL SETUP
  let versionLabel: UILabel = {
    let label = UILabel()
    label.text = "Version 1.2.61"
    label.textColor = .white
    label.font = UIFont(name: "Helvetica", size: 8)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.boldSystemFont(ofSize: 8)
    return label
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    setupViewsOnScreen()
  }
  
  @objc func didTapLoginButton() {
    let newVC = TabsViewController()
    navigationController?.pushViewController(newVC, animated: true)
  }

}

