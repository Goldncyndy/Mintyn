//
//  Extension+SettingsViewController.swift
//  MintynApp
//
//  Created by Decagon on 13/03/2022.
//

import UIKit

extension SettingsViewController {
    func addGestureToTheView() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(updateSystemMode))
        systemView.addGestureRecognizer(gesture)
        let gesturePersonal = UITapGestureRecognizer(target: self, action: #selector(goToPersonalDetailScreen))
        personalDetailsView.addGestureRecognizer(gesturePersonal)
        let gesturePrivacy = UITapGestureRecognizer(target: self, action: #selector(goToPrivacyPolicyScreen))
        privacyPolicyView.addGestureRecognizer(gesturePrivacy)
    }
  // function to set up the views
  func doBasicSetUp() {
    view.addSubview(backButton)
    view.addSubview(settingsNameLabel)
    view.addSubview(personalDetailsView)
    view.addSubview(preferenceView)
    view.addSubview(notificationsView)
    view.addSubview(privacyPolicyView)
    view.addSubview(contactUsView)
    view.addSubview(systemView)
    view.addSubview(businessAccountView)
    view.addSubview(logoutImage)
    view.addSubview(logoutButton)
  }
  // Function to set up constraint
  func setUpConstraint() {
    let logoutStack = UIStackView(arrangedSubviews: [logoutImage, logoutButton])
    logoutStack.distribution = .equalSpacing
    logoutStack.spacing = 20
    logoutStack.axis = .horizontal
    logoutStack.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(logoutStack)
    self.navigationItem.setHidesBackButton(true, animated: true)
    NSLayoutConstraint.activate([
      backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
      backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      backButton.heightAnchor.constraint(equalToConstant: 28),
      backButton.widthAnchor.constraint(equalToConstant: 28),
      settingsNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 75),
      settingsNameLabel.leftAnchor.constraint(equalTo: backButton.leftAnchor, constant: 140),
      personalDetailsView.topAnchor.constraint(equalTo: settingsNameLabel.bottomAnchor, constant: 30),
      personalDetailsView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      personalDetailsView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
      //      preference constraints
      preferenceView.topAnchor.constraint(equalTo: personalDetailsView.bottomAnchor, constant: 10),
      preferenceView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      preferenceView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
      //      notification settings constraint
      notificationsView.topAnchor.constraint(equalTo: preferenceView.bottomAnchor, constant: 10),
      notificationsView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      notificationsView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
      //      privacy policy constraints
      privacyPolicyView.topAnchor.constraint(equalTo: notificationsView.bottomAnchor, constant: 10),
      privacyPolicyView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      privacyPolicyView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
      //      contact us constraints
      contactUsView.topAnchor.constraint(equalTo: privacyPolicyView.bottomAnchor, constant: 10),
      contactUsView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      contactUsView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
      //   system constraints
      systemView.topAnchor.constraint(equalTo: contactUsView.bottomAnchor, constant: 10),
      systemView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      systemView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
      //  create business account label constraint
      businessAccountView.topAnchor.constraint(equalTo: systemView.bottomAnchor, constant: 10),
      businessAccountView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      businessAccountView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
      //      logoutStack view constraints
      logoutStack.topAnchor.constraint(equalTo: businessAccountView.bottomAnchor, constant: 10),
      logoutStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30)
    ])
  }
}
// UIview extension
extension UIView {
  class func makeSettingslabel() -> UILabel {
    let label = UILabel()
    label.heightAnchor.constraint(equalToConstant: 48).isActive = true
    label.layer.borderWidth = 0
    label.font = UIFont(name: "Helvetica", size: 17)
    return label
  }
  class func makeSettingsButton() -> UIButton {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.heightAnchor.constraint(equalToConstant: 25).isActive = true
    button.widthAnchor.constraint(equalToConstant: 20).isActive = true
    //button.setImage(UIImage(named: "Go-Forward"), for: .normal)
    return button
  }
  class func makeSettingsImage() -> UIImageView {
    let imageView = UIImageView()
    imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
    imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
    return imageView
  }
}

