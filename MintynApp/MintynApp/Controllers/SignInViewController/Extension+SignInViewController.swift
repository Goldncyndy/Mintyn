//
//  Extension+SignInViewController.swift
//  MintynApp
//
//  Created by Decagon on 13/03/2022.
//

import UIKit

extension SignInViewController {
  
  func setupViewsOnScreen() {
  
    view.addSubview(welcomeLabel)
    view.addSubview(insuranceCardView)
    insuranceCardView.addSubview(insuranceLabel)
    insuranceCardView.addSubview(insuranceImageView)
    view.addSubview(openAccountCardView)
    openAccountCardView.addSubview(openAccountLabel)
    openAccountCardView.addSubview(openAccountImageView)
    view.addSubview(registerCardView)
    registerCardView.addSubview(registerLabel)
    registerCardView.addSubview(registerImageView)
    view.addSubview(contactCardView)
    contactCardView.addSubview(contactLabel)
    contactCardView.addSubview(contactImageView)
    view.addSubview(loginCardView)
    loginCardView.addSubview(phoneNumberLabel)
    loginCardView.addSubview(phoneNumberTextView)
    loginCardView.addSubview(infoLabel)
    loginCardView.addSubview(passwordLabel)
    loginCardView.addSubview(passwordTextField)
    loginCardView.addSubview(loginButton)
    loginCardView.addSubview(rememberMeLabel)
    loginCardView.addSubview(forgotPasswordLabel)
    loginCardView.addSubview(registerNewDeviceLabel)
    loginCardView.addSubview(poweredByLabel)
    loginCardView.addSubview(versionLabel)
    navigationController?.navigationBar.isHidden = true
    setupViewConstriants()
  }
  
  func setupViewConstriants() {
    
    NSLayoutConstraint.activate ([
      // MARK: - welcome label Constraints
      welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
      welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
      welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
      // MARK: - insurance Card Constraints
      insuranceCardView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 15),
      insuranceCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
      insuranceCardView.widthAnchor.constraint(equalToConstant: view.frame.width/2.3),
      insuranceCardView.heightAnchor.constraint(equalToConstant: 80),
      // Insurance Image view
      insuranceImageView.topAnchor.constraint(equalTo: insuranceCardView.topAnchor, constant: 15),
      insuranceImageView.leadingAnchor.constraint(equalTo: insuranceCardView.leadingAnchor, constant: 10),
      insuranceImageView.heightAnchor.constraint(equalToConstant: 40),
      insuranceImageView.widthAnchor.constraint(equalToConstant: 40),
      // MARK: - Insurance Label Constraints
      insuranceLabel.topAnchor.constraint(equalTo: insuranceCardView.topAnchor, constant: 25),
      insuranceLabel.leadingAnchor.constraint(equalTo: insuranceImageView.trailingAnchor, constant: 5),
      // MARK: - Open Account Card Constraints
      openAccountCardView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 15),
      openAccountCardView.leadingAnchor.constraint(equalTo: insuranceCardView.trailingAnchor, constant: 10),
      openAccountCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
      openAccountCardView.widthAnchor.constraint(equalToConstant: view.frame.width/2.3),
      openAccountCardView.heightAnchor.constraint(equalToConstant: 80),
      // OPEN ACCOUNT IMAGE VIEW
      openAccountImageView.topAnchor.constraint(equalTo: openAccountCardView.topAnchor, constant: 15),
      openAccountImageView.leadingAnchor.constraint(equalTo: openAccountCardView.leadingAnchor, constant: 10),
      openAccountImageView.heightAnchor.constraint(equalToConstant: 40),
      openAccountImageView.widthAnchor.constraint(equalToConstant: 40),
      // MARK: - Open Account Label Constraints
      openAccountLabel.topAnchor.constraint(equalTo: openAccountCardView.topAnchor, constant: 25),
      openAccountLabel.leadingAnchor.constraint(equalTo: openAccountImageView.trailingAnchor, constant: 5),
      // MARK: - Register Card Constraints
      registerCardView.topAnchor.constraint(equalTo: insuranceCardView.bottomAnchor, constant: 10),
      registerCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
      registerCardView.widthAnchor.constraint(equalToConstant: view.frame.width/2.3),
      registerCardView.heightAnchor.constraint(equalToConstant: 80),
      //REGISTER ACCOUNT IMAGE VIEW
      registerImageView.topAnchor.constraint(equalTo: registerCardView.topAnchor, constant: 20),
      registerImageView.leadingAnchor.constraint(equalTo: registerCardView.leadingAnchor, constant: 10),
      registerImageView.heightAnchor.constraint(equalToConstant: 40),
      registerImageView.widthAnchor.constraint(equalToConstant: 40),
      // MARK: - Register Label Constraints
      registerLabel.topAnchor.constraint(equalTo: registerCardView.topAnchor, constant: 25),
      registerLabel.leadingAnchor.constraint(equalTo: registerImageView.trailingAnchor, constant: 5),
      // MARK: - Contact Card Constraints
      contactCardView.topAnchor.constraint(equalTo: insuranceCardView.bottomAnchor, constant: 10),
      contactCardView.leadingAnchor.constraint(equalTo: registerCardView.trailingAnchor, constant: 10),
      contactCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
      contactCardView.widthAnchor.constraint(equalToConstant: view.frame.width/2.3),
      contactCardView.heightAnchor.constraint(equalToConstant: 80),
      // CONTACT IMAGE VIEW
      contactImageView.topAnchor.constraint(equalTo: contactCardView.topAnchor, constant: 20),
      contactImageView.leadingAnchor.constraint(equalTo: contactCardView.leadingAnchor, constant: 10),
      contactImageView.heightAnchor.constraint(equalToConstant: 40),
      contactImageView.widthAnchor.constraint(equalToConstant: 40),
      // MARK: - Contact Card Constraints
      contactLabel.topAnchor.constraint(equalTo: contactCardView.topAnchor, constant: 25),
      contactLabel.leadingAnchor.constraint(equalTo: contactImageView.trailingAnchor, constant: 5),
      // MARK: - Loging Card View Constraints
//      loginCardView.topAnchor.constraint(equalTo: contactCardView.bottomAnchor, constant: 100),
      loginCardView.heightAnchor.constraint(equalToConstant: view.frame.height/2),
      loginCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 2),
      loginCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -2),
      loginCardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
      // MARK: - Phone Number Label Constraints
      phoneNumberLabel.topAnchor.constraint(equalTo: loginCardView.topAnchor, constant: 40),
      phoneNumberLabel.leadingAnchor.constraint(equalTo: loginCardView.leadingAnchor, constant: 30),
      // MARK: - Phone Number TextView Constraints
      phoneNumberTextView.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: 5),
      phoneNumberTextView.leadingAnchor.constraint(equalTo: loginCardView.leadingAnchor, constant: 30),
      phoneNumberTextView.trailingAnchor.constraint(equalTo: loginCardView.trailingAnchor, constant: -30),
      phoneNumberTextView.heightAnchor.constraint(equalToConstant: 36),
      // MARK: - Info Label Constraints
      infoLabel.topAnchor.constraint(equalTo: phoneNumberTextView.bottomAnchor, constant: 5),
      infoLabel.trailingAnchor.constraint(equalTo: loginCardView.trailingAnchor, constant: -30),
      // MARK: - Password TextView Constraints
      passwordLabel.topAnchor.constraint(equalTo: phoneNumberTextView.bottomAnchor, constant: 15),
      passwordLabel.leadingAnchor.constraint(equalTo: loginCardView.leadingAnchor, constant: 30),
      // MARK: - Password TextView Constraints
      passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
      passwordTextField.leadingAnchor.constraint(equalTo: loginCardView.leadingAnchor, constant: 30),
      passwordTextField.trailingAnchor.constraint(equalTo: loginCardView.trailingAnchor, constant: -30),
      passwordTextField.heightAnchor.constraint(equalToConstant: 36),
      // MARK: - Remember Me Label Constraints
      rememberMeLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8),
      rememberMeLabel.leadingAnchor.constraint(equalTo: loginCardView.leadingAnchor, constant: 30),
      // MARK: - Forgot Password Label Constraints
      forgotPasswordLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8),
      forgotPasswordLabel.trailingAnchor.constraint(equalTo: loginCardView.trailingAnchor, constant: -30),
      // MARK: - Login Button
      loginButton.leadingAnchor.constraint(equalTo: loginCardView.leadingAnchor, constant: 30),
      loginButton.trailingAnchor.constraint(equalTo: loginCardView.trailingAnchor, constant: -30),
      loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -90),
      loginButton.heightAnchor.constraint(equalToConstant: 40),
      // MARK: - FOOTER LABELS
      registerNewDeviceLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 25),
      registerNewDeviceLabel.centerXAnchor.constraint(equalTo: loginCardView.centerXAnchor),
      
      poweredByLabel.topAnchor.constraint(equalTo: registerNewDeviceLabel.bottomAnchor, constant: 3),
      poweredByLabel.centerXAnchor.constraint(equalTo: loginCardView.centerXAnchor),
      
      versionLabel.topAnchor.constraint(equalTo: poweredByLabel.bottomAnchor, constant: 17),
      versionLabel.centerXAnchor.constraint(equalTo: loginCardView.centerXAnchor),
      ])
    
  }
}

class LeftPaddedTextField: UITextField {
  override func textRect(forBounds bounds: CGRect) -> CGRect {
    return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
  }
  override func editingRect(forBounds bounds: CGRect) -> CGRect {
    return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
  }
}
