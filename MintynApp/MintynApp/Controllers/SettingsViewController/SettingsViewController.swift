//
//  SettingsViewController.swift
//  MintynApp
//
//  Created by Decagon on 13/03/2022.
//

import UIKit

class SettingsViewController: UIViewController {
  let backButton: UIButton = {
    let button = UIButton()
    button.setBackgroundImage(UIImage(named: "Go-back"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(goBackToProfileScreen), for: .touchUpInside)
    return button
  }()
  // MARK: - name of the session
  lazy var settingsNameLabel: UILabel = {
    let label = UILabel()
    label.text = "Settings"
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont(name: "Helvetica", size: 18)
    label.numberOfLines = 1
    return label
  }()
  //  Personal details view
  let personalDetailsView: UIView = {
    let view = UIView()
    let personalDetailsImage: UIImageView = {
      let imageView = UIImageView.makeSettingsImage()
      imageView.image = UIImage(named: "SmallUser-Icon")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let personalDetailsLabel: UILabel = {
      let label = UILabel.makeSettingslabel()
      label.text = "Profile"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let personalDetailsButton: UIButton = {
      let button = UIButton.makeSettingsButton()
      button.setBackgroundImage(UIImage(named: "forward"), for: .normal)
      button.heightAnchor.constraint(equalToConstant: 20).isActive = true
      button.widthAnchor.constraint(equalToConstant: 10).isActive = true
      button.translatesAutoresizingMaskIntoConstraints = false
      button.addTarget(self, action: #selector(goToPersonalDetailScreen), for: .touchUpInside)
      return button
    }()
    view.addSubview(personalDetailsImage)
    view.addSubview(personalDetailsLabel)
    view.addSubview(personalDetailsButton)
    view.heightAnchor.constraint(equalToConstant: 48).isActive = true
    personalDetailsImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    personalDetailsImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    
    personalDetailsLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    personalDetailsLabel.leftAnchor.constraint(equalTo: personalDetailsImage.rightAnchor, constant: 20).isActive = true
    
    personalDetailsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    personalDetailsButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  //  preference settings
  let preferenceView: UIView = {
    let view = UIView()
    let preferenceImage: UIImageView = {
      let imageView = UIImageView.makeSettingsImage()
      imageView.image = UIImage(named: "Job-stress")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let preferenceLabel: UILabel = {
      let label = UILabel.makeSettingslabel()
      label.text = "Account Management"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let preferenceButton: UIButton = {
      let button = UIButton.makeSettingsButton()
      button.setBackgroundImage(UIImage(named: "forward"), for: .normal)
      button.widthAnchor.constraint(equalToConstant: 10).isActive = true
      button.heightAnchor.constraint(equalToConstant: 20).isActive = true
      button.translatesAutoresizingMaskIntoConstraints = false
//      button.addTarget(self, action: #selector(goToPreferenceScreen), for: .touchUpInside)
      return button
    }()
    view.addSubview(preferenceImage)
    view.addSubview(preferenceLabel)
    view.addSubview(preferenceButton)
    view.heightAnchor.constraint(equalToConstant: 48).isActive = true
    
    preferenceImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    preferenceImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    
    preferenceLabel.leftAnchor.constraint(equalTo: preferenceImage.rightAnchor, constant: 20).isActive = true
    preferenceLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    preferenceButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    preferenceButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  //  Notification view
  let notificationsView: UIView = {
    let view = UIView()
    let notificationsImage: UIImageView = {
      let imageView = UIImageView.makeSettingsImage()
      imageView.image = UIImage(named: "bell")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let notificationsLabel: UILabel = {
      let label = UILabel.makeSettingslabel()
      label.text = "Referrals"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let notificationsButton: UIButton = {
      let button = UIButton.makeSettingsButton()
      button.setBackgroundImage(UIImage(named: "forward"), for: .normal)
      button.widthAnchor.constraint(equalToConstant: 10).isActive = true
      button.heightAnchor.constraint(equalToConstant: 20).isActive = true
      button.translatesAutoresizingMaskIntoConstraints = false
      button.addTarget(self, action: #selector(goToNotificationScreen), for: .touchUpInside)
      return button
    }()
    view.addSubview(notificationsImage)
    view.addSubview(notificationsLabel)
    view.addSubview(notificationsButton)
    view.heightAnchor.constraint(equalToConstant: 48).isActive = true
    
    notificationsImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    notificationsImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    notificationsLabel.leftAnchor.constraint(equalTo: notificationsImage.rightAnchor, constant: 20).isActive = true
    notificationsLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    notificationsButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    notificationsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  //  privacy policy view
  let privacyPolicyView: UIView = {
    let view = UIView()
    let privacyPolicyImage: UIImageView = {
      let imageView = UIImageView.makeSettingsImage()
      imageView.image = UIImage(named: "shield")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let privacyPolicyLabel: UILabel = {
      let label = UILabel.makeSettingslabel()
      label.text = "Legal"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let privacyPolicyButton: UIButton = {
      let button = UIButton.makeSettingsButton()
      button.setBackgroundImage(UIImage(named: "forward"), for: .normal)
      button.widthAnchor.constraint(equalToConstant: 10).isActive = true
      button.heightAnchor.constraint(equalToConstant: 20).isActive = true
      button.translatesAutoresizingMaskIntoConstraints = false
      button.addTarget(self, action: #selector(goToPrivacyPolicyScreen), for: .touchUpInside)
      return button
    }()
    view.addSubview(privacyPolicyImage)
    view.addSubview(privacyPolicyLabel)
    view.addSubview(privacyPolicyButton)
    view.heightAnchor.constraint(equalToConstant: 48).isActive = true
    
    privacyPolicyImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    privacyPolicyImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    
    privacyPolicyLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    privacyPolicyLabel.leftAnchor.constraint(equalTo: privacyPolicyImage.rightAnchor, constant: 20).isActive = true
    
    privacyPolicyButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    privacyPolicyButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  //  contact us view
  let contactUsView: UIView = {
    let view = UIView()
    let contactUsImage: UIImageView = {
      let imageView = UIImageView.makeSettingsImage()
      imageView.image = UIImage(named: "agent")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let contactUsLabel: UILabel = {
      let label = UILabel.makeSettingslabel()
      label.text = "Help and Support"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let contactUsButton: UIButton = {
      let button = UIButton.makeSettingsButton()
      button.setBackgroundImage(UIImage(named: "forward"), for: .normal)
      button.widthAnchor.constraint(equalToConstant: 10).isActive = true
      button.heightAnchor.constraint(equalToConstant: 20).isActive = true
      button.translatesAutoresizingMaskIntoConstraints = false
      button.addTarget(self, action: #selector(goToContactScreen), for: .touchUpInside)
      return button
    }()
    view.addSubview(contactUsImage)
    view.addSubview(contactUsLabel)
    view.addSubview(contactUsButton)
    view.heightAnchor.constraint(equalToConstant: 48).isActive = true
    contactUsImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    contactUsImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    
    contactUsLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    contactUsLabel.leftAnchor.constraint(equalTo: contactUsImage.rightAnchor, constant: 20).isActive = true
    
    contactUsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    contactUsButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  //  contact us view
  let systemView: UIView = {
    let view = UIView()
    let systemImage: UIImageView = {
      let imageView = UIImageView.makeSettingsImage()
      imageView.image = UIImage(named: "register")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let systemLabel: UILabel = {
      let label = UILabel.makeSettingslabel()
      label.text = "System"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let systemButton: UIButton = {
      let button = UIButton.makeSettingsButton()
      button.setBackgroundImage(UIImage(named: "forward"), for: .normal)
      button.widthAnchor.constraint(equalToConstant: 10).isActive = true
      button.heightAnchor.constraint(equalToConstant: 20).isActive = true
      button.translatesAutoresizingMaskIntoConstraints = false
      button.addTarget(self, action: #selector(goToContactScreen), for: .touchUpInside)
      return button
    }()
    view.addSubview(systemImage)
    view.addSubview(systemLabel)
    view.addSubview(systemButton)
    view.heightAnchor.constraint(equalToConstant: 48).isActive = true
    systemImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    systemImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    
    systemLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    systemLabel.leftAnchor.constraint(equalTo: systemImage.rightAnchor, constant: 20).isActive = true
    
    systemButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    systemButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  //  Create Business Account view
  let businessAccountView: UIView = {
    let view = UIView()
    let businessImage: UIImageView = {
      let imageView = UIImageView.makeSettingsImage()
      imageView.image = UIImage(named: "card")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let businessLabel: UILabel = {
      let label = UILabel.makeSettingslabel()
      label.text = "Create Business Account"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let businessButton: UIButton = {
      let button = UIButton.makeSettingsButton()
      button.setBackgroundImage(UIImage(named: "forward"), for: .normal)
      button.translatesAutoresizingMaskIntoConstraints = false
      button.widthAnchor.constraint(equalToConstant: 10).isActive = true
      button.heightAnchor.constraint(equalToConstant: 20).isActive = true
      button.addTarget(self, action: #selector(goToContactScreen), for: .touchUpInside)
      return button
    }()
    view.addSubview(businessImage)
    view.addSubview(businessLabel)
    view.addSubview(businessButton)
    view.heightAnchor.constraint(equalToConstant: 48).isActive = true
    businessImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    businessImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    
    businessLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    businessLabel.leftAnchor.constraint(equalTo: businessImage.rightAnchor, constant: 20).isActive = true
    
    businessButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    businessButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

  //  logout view
  let logoutButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Logout", for: .normal)
    button.setTitleColor(.black, for: .normal)
    button.heightAnchor.constraint(equalToConstant: 48).isActive = true
    button.titleLabel!.font = UIFont(name: "Helvetica", size: 17)
    button.addTarget(self, action: #selector(logout), for: .touchUpInside)
    return button
  }()
  let logoutImage: UIImageView = {
    let imageView = UIImageView.makeSettingsImage()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = UIImage(named: "logout-icon")
    return imageView
  }()
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    doBasicSetUp()
    setUpConstraint()
    addGestureToTheView()
  }
  //  back button function
  @objc func goBackToProfileScreen() {
    navigationController?.popViewController(animated: true)
  }
  //  go to personal details screen function
  @objc func goToPersonalDetailScreen() {
        navigationController?.navigationBar.isHidden = true
  }
  // go to preference screen
  @objc func goToPreferenceScreen() {
    navigationController?.navigationBar.isHidden = true
  }
  //  go to notification screen
  @objc func goToNotificationScreen() {
  }
  //  go to privacy policy screen
  @objc func goToPrivacyPolicyScreen() {
    navigationController?.navigationBar.isHidden = false
    let newVC = LegalViewController()
     navigationController?.pushViewController(newVC, animated: true)
  }
  //  go to contact us screen
  @objc func goToContactScreen() {
  }
  //  go to logout
  @objc func logout() {
    let actionSheet = UIAlertController(title: "Log Out", message: "Are you sure, you want to log out?", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Cancel",
                                            style: .cancel, handler: nil))


        actionSheet.addAction(UIAlertAction(title: "Log Out", style: .destructive,
                                            handler: { [weak self] _ in

                                                guard let strongSelf = self else {
                                                    return
                                                }

                                                    let vc = SignInViewController()
                                                    let nav = UINavigationController(rootViewController: vc)
                                                    nav.modalPresentationStyle = .fullScreen
                                                    strongSelf.present(nav, animated: true)


                                            }))
        present(actionSheet, animated: true)
    navigationController?.popViewController(animated: true)
  }
}
