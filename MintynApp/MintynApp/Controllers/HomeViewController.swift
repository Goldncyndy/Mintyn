//
//  HomeViewController.swift
//  MintynApp
//
//  Created by Decagon on 13/03/2022.
//

import UIKit

class HomeViewController: UIViewController {

  // MARK: - WELCOME LABEL SETUP VIEW
  let screenLabel: UILabel = {
    let label = UILabel()
    label.text = "MINTYN"
    label.numberOfLines = 0
    label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
    label.textAlignment = .center
    label.textColor = .black
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  // MARK: - TOP BELL ICON
  let topBellIcon: UIButton = {
    let button = UIButton()
    button.setBackgroundImage(UIImage(named: "bell"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  // MARK: - CARD VIEW
  let userCardView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(red: 0.67, green: 0.50, blue: 0.22, alpha: 1.00)
    view.layer.cornerRadius = 20.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  // MARK: - IMAGE VIEW
  lazy var userImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "profile2")
    imageView.layer.cornerRadius = 15.0
    imageView.clipsToBounds = true
    imageView.frame = userCardView.bounds
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  // MARK: - WELCOME LABEL SETUP VIEW
  let userNameLabel: UILabel = {
    let label = UILabel()
    label.text = "Cynthia E. \nIndividual"
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 18)
    label.textAlignment = .left
    label.textColor = .black
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  // MARK: - ACCOUNT NUMBER LABEL SETUP VIEW
  let accountNumberLabel: UILabel = {
    let label = UILabel()
    label.text = "3118820011"
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 16)
    label.textAlignment = .left
    label.textColor = .orange
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - COPY BUTTON
  lazy var copyButton: UIButton = {
    let button = UIButton()
    button.setTitle("Copy", for: .normal)
    button.backgroundColor = UIColor(red: 0.89, green: 0.89, blue: 0.89, alpha: 1.00)
    button.setTitleColor(.black, for: .normal)
    button.titleLabel?.font = UIFont(name: "Helvetica", size: 13)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 20
    return button
  }()
  
  // MARK: - DROPDOWN ICON
  let dropDownIcon: UIButton = {
    let button = UIButton.makeSettingsButton()
    button.setBackgroundImage(UIImage(named: ""), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  // MARK: - Banner CARD VIEW
  let BannerCardView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(red: 0.67, green: 0.50, blue: 0.22, alpha: 1.00)
    view.layer.cornerRadius = 1.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  // MARK: - Available Balance Label
  let availableBalanceLabel: UILabel = {
    let label = UILabel()
    label.text = "Available Balance"
    label.textColor = .black
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - Actual Balance Label
  let actualBalanceLabel: UILabel = {
    let label = UILabel()
    label.text = "XXX.XXX"
    label.textColor = .white
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 25)
    label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - FUND ACCOUNT BUTTON
  lazy var fundAccountButton: UIButton = {
    let button = UIButton()
    button.setTitle("FUND ACCOUNT", for: .normal)
    button.backgroundColor = .black
    button.setTitleColor(.white, for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 4
    return button
  }()
  // MARK: - Ledger Balance Label
  let ledgerBalanceLabel: UILabel = {
    let label = UILabel()
    label.text = "Ledger balance:"
    label.textColor = .darkGray
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - Actual Balance in Ledger Label
  let ledgerBalanceAmountLabel: UILabel = {
    let label = UILabel()
    label.text = "XXX.XXX"
    label.textColor = .black
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 15)
    label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - Implement UI SWITCH SETUP
  let switchButton: UISwitch = {
    let toggle = UISwitch(frame:CGRect(x: 150, y: 300, width: 0, height: 15))
    toggle.isOn = true
    toggle.setOn(true, animated: false)
    return toggle
  }()
  // MARK: - Hide Balance in Ledger Label
  let hideBalanceLabel: UILabel = {
    let label = UILabel()
    label.text = "Hide balance"
    label.textColor = .darkGray
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - Advert Banner CARD VIEW
  let advertBannerCardView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(red: 0.67, green: 0.50, blue: 0.22, alpha: 1.00)
    view.layer.cornerRadius = 10
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  // MARK: - Advert Label
  let firstLineAdvertLabel: UILabel = {
    let label = UILabel()
    label.text = "You can invest as low as"
    label.textColor = .black
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - Advert Label
  let advertAmountLabel: UILabel = {
    let label = UILabel()
    label.text = "N5000"
    label.textColor = .white
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 36)
    label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - Advert Label
  let earnLabel: UILabel = {
    let label = UILabel()
    label.text = "and earn up to"
    label.textColor = .black
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - Advert Label
  let percentLabel: UILabel = {
    let label = UILabel()
    label.text = "30.5%"
    label.textColor = .white
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 16)
    label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - Advert Label
  let interestLabel: UILabel = {
    let label = UILabel()
    label.text = "interest per annum"
    label.textColor = .black
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 16)
    label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - INVEST BUTTON
  lazy var investButton: UIButton = {
    let button = UIButton()
    button.setTitle("Invest Now", for: .normal)
    button.backgroundColor = .black
    button.setTitleColor(.white, for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 4
    return button
  }()
  let scrollIndicatorLabel: UILabel = {
    let label = UILabel()
    label.text = ". . ."
    label.textColor = .black
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 50)
    label.font = UIFont.systemFont(ofSize: 50, weight: .bold)
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - days data Banner CARD VIEW
  let daysDataCardView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.layer.cornerRadius = 10
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  // MARK: - TODAY DATA BUTTON
  lazy var todayButton: UIButton = {
    let button = UIButton()
    button.setTitle("Today", for: .normal)
    button.backgroundColor = .white
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.orange.cgColor
    button.setTitleColor(.orange, for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 4
    return button
  }()
  // MARK: - LAST 7 DAYS BUTTON
  lazy var last7daysButton: UIButton = {
    let button = UIButton()
    button.setTitle("Last 7 days", for: .normal)
    button.backgroundColor = .white
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.gray.cgColor
    button.setTitleColor(.darkGray, for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 4
    return button
  }()
  // MARK: - CARD VIEW
  let daysYellowView: UIView = {
    let view = UIView()
    view.backgroundColor = .orange
    view.layer.cornerRadius = 1.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  let daysYellowLabel: UILabel = {
    let label = UILabel()
    label.text = "Inflow"
    label.textColor = .black
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  let daysYellowAmountLabel: UILabel = {
    let label = UILabel()
    label.text = "N0.00"
    label.textColor = .orange
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - CARD VIEW
  let daysPinkView: UIView = {
    let view = UIView()
    view.backgroundColor = .systemPink
    view.layer.cornerRadius = 1.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  let daysPinkLabel: UILabel = {
    let label = UILabel()
    label.text = "Outflow"
    label.textColor = .black
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  let daysPinkAmountLabel: UILabel = {
    let label = UILabel()
    label.text = "N0.00"
    label.textColor = .systemPink
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  // MARK: - DATA IMAGE VIEW
  // MARK: - IMAGE VIEW
  lazy var dataImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "piechart")
    imageView.clipsToBounds = true
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  // MARK: - complete verification Banner CARD VIEW
  let completeVerificationCardView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.layer.cornerRadius = 5
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    let completeVerificationLabel: UILabel = {
      let label = UILabel.makeSettingslabel()
      label.text = "Complete your Verification"
      label.font = UIFont(name: "Helvetica", size: 13)
      label.textAlignment = .left
      label.textColor = .orange
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let completeVerificationButton: UIButton = {
      let button = UIButton.makeSettingsButton()
      button.setBackgroundImage(UIImage(named: "forward"), for: .normal)
      button.translatesAutoresizingMaskIntoConstraints = false
      //button.addTarget(self, action: #selector(goToContactScreen), for: .touchUpInside)
      return button
    }()
    view.addSubview(completeVerificationLabel)
    view.addSubview(completeVerificationButton)
    completeVerificationLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 2).isActive = true
    completeVerificationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
    completeVerificationButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
    completeVerificationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
    return view
  }()
  // MARK: - CARD VIEW
  let CardView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.layer.cornerRadius = 25.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
   // content 1
    let transferImage: UIImageView = {
      let imageView = UIImageView()
      imageView.image = UIImage(named: "finance")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let transferLabel: UILabel = {
      let label = UILabel()
      label.numberOfLines = 0
      label.font = UIFont(name: "Helvetica", size: 13)
      label.textAlignment = .center
      label.textColor = .black
      label.text = "Transfer"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let firstStack = UIStackView(arrangedSubviews: [transferImage, transferLabel])
    firstStack.distribution = .fill
    firstStack.spacing = 1
    firstStack.axis = .vertical
    firstStack.alignment = .center
    firstStack.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(firstStack)
    firstStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    firstStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
    view.addSubview(transferImage)
    view.addSubview(transferLabel)
    transferImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    transferImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
    transferImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
    transferImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
    transferLabel.topAnchor.constraint(equalTo: transferImage.bottomAnchor, constant: 5).isActive = true
    transferLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
    // content 2
    let topUpImage: UIImageView = {
      let imageView = UIImageView()
      imageView.image = UIImage(named: "register")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let topUpLabel: UILabel = {
      let label = UILabel()
      label.numberOfLines = 0
      label.font = UIFont(name: "Helvetica", size: 13)
      label.textAlignment = .left
      label.textColor = .black
      label.text = "Top Up"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let secondStack = UIStackView(arrangedSubviews: [topUpImage, topUpLabel])
    secondStack.distribution = .fill
    secondStack.spacing = 1
    secondStack.axis = .vertical
    secondStack.alignment = .center
    secondStack.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(secondStack)
    secondStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    secondStack.leadingAnchor.constraint(equalTo: firstStack.leadingAnchor, constant: 30).isActive = true
    view.addSubview(topUpImage)
    view.addSubview(topUpLabel)
    topUpImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    topUpImage.leadingAnchor.constraint(equalTo: transferImage.trailingAnchor, constant: 40).isActive = true
    topUpImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
    topUpImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
    topUpLabel.topAnchor.constraint(equalTo: topUpImage.bottomAnchor, constant: 5).isActive = true
    topUpLabel.leadingAnchor.constraint(equalTo: transferLabel.trailingAnchor, constant: 30).isActive = true
    // content 3
    let payBillImage: UIImageView = {
      let imageView = UIImageView()
      imageView.image = UIImage(named: "privacy-icon")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let payBillLabel: UILabel = {
      let label = UILabel()
      label.numberOfLines = 0
      label.font = UIFont(name: "Helvetica", size: 13)
      label.textAlignment = .center
      label.textColor = .black
      label.text = "Pay Bill"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let thirdStack = UIStackView(arrangedSubviews: [payBillImage, payBillLabel])
    thirdStack.distribution = .fill
    thirdStack.spacing = 1
    thirdStack.axis = .vertical
    thirdStack.alignment = .center
    thirdStack.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(thirdStack)
    thirdStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    thirdStack.leadingAnchor.constraint(equalTo: secondStack.trailingAnchor, constant: 30).isActive = true
    view.addSubview(payBillImage)
    view.addSubview(payBillLabel)
    //view.heightAnchor.constraint(equalToConstant: 48).isActive = true
    payBillImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    payBillImage.leadingAnchor.constraint(equalTo: topUpImage.trailingAnchor, constant: 40).isActive = true
    payBillImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
    payBillImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
    payBillLabel.topAnchor.constraint(equalTo: payBillImage.bottomAnchor, constant: 5).isActive = true
    payBillLabel.leadingAnchor.constraint(equalTo: topUpLabel.trailingAnchor, constant: 30).isActive = true
    // content 4
    let saveMoneyImage: UIImageView = {
      let imageView = UIImageView()
      imageView.image = UIImage(named: "card")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let saveMoneyLabel: UILabel = {
      let label = UILabel()
      label.numberOfLines = 0
      label.font = UIFont(name: "Helvetica", size: 13)
      label.textAlignment = .center
      label.textColor = .black
      label.text = "save\nMoney"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let fourthtack = UIStackView(arrangedSubviews: [saveMoneyImage, saveMoneyLabel])
    fourthtack.distribution = .fill
    fourthtack.spacing = 1
    fourthtack.axis = .vertical
    fourthtack.alignment = .center
    fourthtack.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(fourthtack)
    fourthtack.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    fourthtack.leadingAnchor.constraint(equalTo: thirdStack.trailingAnchor, constant: 30).isActive = true
    view.addSubview(saveMoneyImage)
    view.addSubview(saveMoneyLabel)
    saveMoneyImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    saveMoneyImage.leadingAnchor.constraint(equalTo: payBillImage.trailingAnchor, constant: 45).isActive = true
    saveMoneyImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
    saveMoneyImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
    saveMoneyLabel.topAnchor.constraint(equalTo: saveMoneyImage.bottomAnchor, constant: 5).isActive = true
    saveMoneyLabel.leadingAnchor.constraint(equalTo: payBillLabel.trailingAnchor, constant: 30).isActive = true
    // content 5
    let mintynInvestImage: UIImageView = {
      let imageView = UIImageView()
      imageView.image = UIImage(named: "barchart")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let mintynInvestLabel: UILabel = {
      let label = UILabel()
      label.numberOfLines = 0
      label.font = UIFont(name: "Helvetica", size: 13)
      label.textAlignment = .center
      label.textColor = .black
      label.text = "mintyn\nInvest"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let fifthStack = UIStackView(arrangedSubviews: [mintynInvestImage, mintynInvestLabel])
    fifthStack.distribution = .fill
    fifthStack.spacing = 1
    fifthStack.axis = .vertical
    fifthStack.alignment = .center
    fifthStack.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(fifthStack)
    fifthStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    fifthStack.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30).isActive = true
    view.addSubview(mintynInvestImage)
    view.addSubview(mintynInvestLabel)
    mintynInvestImage.topAnchor.constraint(equalTo: transferLabel.bottomAnchor, constant: 20).isActive = true
    mintynInvestImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35).isActive = true
    mintynInvestImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
    mintynInvestImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
    mintynInvestLabel.topAnchor.constraint(equalTo: mintynInvestImage.bottomAnchor, constant: 5).isActive = true
    mintynInvestLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
    // content 6
    let loanImage: UIImageView = {
      let imageView = UIImageView()
      imageView.image = UIImage(named: "card")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let loanLabel: UILabel = {
      let label = UILabel()
      label.numberOfLines = 0
      label.font = UIFont(name: "Helvetica", size: 13)
      label.textAlignment = .center
      label.textColor = .black
      label.text = "Loan"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let sixthStack = UIStackView(arrangedSubviews: [loanImage, loanLabel])
    sixthStack.distribution = .fill
    sixthStack.spacing = 1
    sixthStack.axis = .vertical
    sixthStack.alignment = .center
    sixthStack.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(sixthStack)
    sixthStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    sixthStack.leadingAnchor.constraint(equalTo: fifthStack.leadingAnchor, constant: 40).isActive = true
    view.addSubview(loanImage)
    view.addSubview(loanLabel)
    loanImage.topAnchor.constraint(equalTo: topUpLabel.bottomAnchor, constant: 20).isActive = true
    loanImage.leadingAnchor.constraint(equalTo: mintynInvestImage.trailingAnchor, constant: 40).isActive = true
    loanImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
    loanImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
    loanLabel.topAnchor.constraint(equalTo: loanImage.bottomAnchor, constant: 5).isActive = true
    loanLabel.leadingAnchor.constraint(equalTo: mintynInvestLabel.trailingAnchor, constant: 40).isActive = true
    // content 7
    let accountBusinessImage: UIImageView = {
      let imageView = UIImageView()
      imageView.image = UIImage(named: "Job-stress")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let accountBusinessLabel: UILabel = {
      let label = UILabel()
      label.numberOfLines = 0
      label.font = UIFont(name: "Helvetica", size: 13)
      label.textAlignment = .center
      label.textColor = .black
      label.text = "Business\nAccount"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let seventhStack = UIStackView(arrangedSubviews: [accountBusinessImage, accountBusinessLabel])
    seventhStack.distribution = .fill
    seventhStack.spacing = 1
    seventhStack.axis = .vertical
    seventhStack.alignment = .center
    seventhStack.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(seventhStack)
    seventhStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    seventhStack.leadingAnchor.constraint(equalTo: sixthStack.trailingAnchor, constant: 35).isActive = true
    view.addSubview(accountBusinessImage)
    view.addSubview(accountBusinessLabel)
    //view.heightAnchor.constraint(equalToConstant: 48).isActive = true
    accountBusinessImage.topAnchor.constraint(equalTo: payBillLabel.bottomAnchor, constant: 20).isActive = true
    accountBusinessImage.leadingAnchor.constraint(equalTo: loanImage.trailingAnchor, constant: 45).isActive = true
    accountBusinessImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
    accountBusinessImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
    accountBusinessLabel.topAnchor.constraint(equalTo: accountBusinessImage.bottomAnchor, constant: 5).isActive = true
    accountBusinessLabel.leadingAnchor.constraint(equalTo: loanLabel.trailingAnchor, constant: 40).isActive = true
    // content 8
  let moreImage: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "more")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  let moreLabel: UILabel = {
    let label = UILabel()
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 13)
    label.textAlignment = .center
    label.textColor = .black
    label.text = "More"
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
    let eightStack = UIStackView(arrangedSubviews: [moreImage, moreLabel])
    eightStack.distribution = .fill
    eightStack.spacing = 1
    eightStack.axis = .vertical
    eightStack.alignment = .center
    eightStack.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(eightStack)
    eightStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
    eightStack.leadingAnchor.constraint(equalTo: seventhStack.trailingAnchor, constant: 40).isActive = true
  view.addSubview(moreImage)
  view.addSubview(moreLabel)
  //view.heightAnchor.constraint(equalToConstant: 48).isActive = true
  moreImage.topAnchor.constraint(equalTo: saveMoneyLabel.bottomAnchor, constant: 15).isActive = true
  moreImage.leadingAnchor.constraint(equalTo: accountBusinessImage.trailingAnchor, constant: 45).isActive = true
  moreImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
  moreImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
  moreLabel.topAnchor.constraint(equalTo: moreImage.bottomAnchor, constant: 5).isActive = true
  moreLabel.leadingAnchor.constraint(equalTo: accountBusinessLabel.trailingAnchor, constant: 30).isActive = true
    
    let firstRowStack = UIStackView(arrangedSubviews: [firstStack, secondStack, thirdStack, fourthtack])
    firstRowStack.distribution = .equalSpacing
    firstRowStack.spacing = 1
    firstRowStack.axis = .horizontal
    firstRowStack.alignment = .center
    firstRowStack.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(firstRowStack)
    firstRowStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    firstRowStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
    firstRowStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
    
    let secondRowStack = UIStackView(arrangedSubviews: [fifthStack, sixthStack, seventhStack, eightStack])
    secondRowStack.distribution = .equalSpacing
    secondRowStack.spacing = 1
    secondRowStack.axis = .horizontal
    secondRowStack.alignment = .center
    secondRowStack.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(secondRowStack)
    secondRowStack.topAnchor.constraint(equalTo: firstRowStack.bottomAnchor, constant: 10).isActive = true
    secondRowStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
    secondRowStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
    
    // MARK: - CARD VIEW 1
    let cardeesView: UIView = {
      let view = UIView()
      view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
      view.layer.cornerRadius = 1.0
      view.isUserInteractionEnabled = true
      view.translatesAutoresizingMaskIntoConstraints = false
      let businessImage: UIImageView = {
        let imageView = UIImageView.makeSettingsImage()
        imageView.image = UIImage(named: "barchart")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
      }()
      let businessButton: UIButton = {
        let button = UIButton.makeSettingsButton()
        button.setBackgroundImage(UIImage(named: "Button"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.addTarget(self, action: #selector(goToContactScreen), for: .touchUpInside)
        return button
      }()
      let businessLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica", size: 12)
        label.textAlignment = .left
        label.textColor = .black
        label.text = " Mintyn Invest\n Start investing towards that life\n goals with savings plans that\n puts you in control"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
      }()
      view.addSubview(businessImage)
      view.addSubview(businessLabel)
      view.addSubview(businessButton)
      view.heightAnchor.constraint(equalToConstant: 125).isActive = true
      view.widthAnchor.constraint(equalToConstant: 185).isActive = true
      businessImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
      businessImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
      businessImage.heightAnchor.constraint(equalToConstant: 60).isActive = true
      businessImage.widthAnchor.constraint(equalToConstant: 60).isActive = true
      businessLabel.topAnchor.constraint(equalTo: businessImage.bottomAnchor, constant: 8).isActive = true
      businessLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
      businessButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
      businessButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5).isActive = true
      return view
    }()
    // MARK: - CARD VIEW 2
    let cardeesView2: UIView = {
      let view = UIView()
      view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
      view.layer.cornerRadius = 1.0
      view.isUserInteractionEnabled = true
      view.translatesAutoresizingMaskIntoConstraints = false
      let businessImage: UIImageView = {
        let imageView = UIImageView.makeSettingsImage()
        imageView.image = UIImage(named: "finance")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
      }()
      let businessButton: UIButton = {
        let button = UIButton.makeSettingsButton()
        button.setBackgroundImage(UIImage(named: "Button"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.addTarget(self, action: #selector(goToContactScreen), for: .touchUpInside)
        return button
      }()
      let businessLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica", size: 12)
        label.textAlignment = .left
        label.textColor = .black
        label.text = " Saving Goals\n Start saving towards that life\n goals with savings plans that\n puts you in control"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
      }()
      view.addSubview(businessImage)
      view.addSubview(businessLabel)
      view.addSubview(businessButton)
      view.heightAnchor.constraint(equalToConstant: 125).isActive = true
      view.widthAnchor.constraint(equalToConstant: 185).isActive = true
      businessImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
      businessImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
      businessLabel.topAnchor.constraint(equalTo: businessImage.bottomAnchor, constant: 8).isActive = true
      businessLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
      businessButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
      businessButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5).isActive = true
      return view
    }()
    
    view.addSubview(cardeesView)
    view.addSubview(cardeesView2)
    //MARK: - CARDEES VIEWS SUBVIEWS OF CARDVIEW
    cardeesView.topAnchor.constraint(equalTo: moreLabel.bottomAnchor, constant: 30).isActive = true
    cardeesView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
    
    cardeesView2.topAnchor.constraint(equalTo: moreLabel.bottomAnchor, constant: 30).isActive = true
    cardeesView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    // MARK: - complete verification Banner CARD VIEW
    let tradeCardView: UIView = {
      let view = UIView()
      view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
      view.layer.cornerRadius = 5
      view.isUserInteractionEnabled = true
      view.translatesAutoresizingMaskIntoConstraints = false
      let tradeImage: UIImageView = {
        let imageView = UIImageView.makeSettingsImage()
        imageView.image = UIImage(named: "finance")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
      }()
      let tradeHeaderLabel: UILabel = {
        let label = UILabel()
        label.text = "Mintyn Trade"
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.font = UIFont(name: "Helvetica", size: 15)
        label.textAlignment = .left
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
      }()
      let tradeSubHeadLabel: UILabel = {
        let label = UILabel()
        label.text = "Purchase products for your store easily"
        label.font = UIFont(name: "Helvetica", size: 12)
        label.textAlignment = .left
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
      }()
      view.addSubview(tradeImage)
      view.addSubview(tradeHeaderLabel)
      view.addSubview(tradeSubHeadLabel)
      view.heightAnchor.constraint(equalToConstant: 60).isActive = true
      tradeImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 15).isActive = true
      tradeImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
      
      tradeHeaderLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 15).isActive = true
      tradeHeaderLabel.leadingAnchor.constraint(equalTo: tradeImage.trailingAnchor, constant: 10).isActive = true
      
      tradeSubHeadLabel.topAnchor.constraint(equalTo: tradeHeaderLabel.bottomAnchor, constant: 6).isActive = true
      tradeSubHeadLabel.leadingAnchor.constraint(equalTo: tradeImage.trailingAnchor, constant: 10).isActive = true
      return view
    }()
    view.addSubview(tradeCardView)
    tradeCardView.topAnchor.constraint(equalTo: cardeesView2.bottomAnchor, constant: 15).isActive = true
    tradeCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
    tradeCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
  return view
}()
  // MARK: - CARD VIEW
  let bottomView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.layer.cornerRadius = 1.0
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  // MARK: - SCROLL VIEW AND CONTENT VIEW SETUP
  let contentView: UIView = {
    let content = UIView()
    content.translatesAutoresizingMaskIntoConstraints = false
    return content
  }()
  let scrollView: UIScrollView = {
    let scroll = UIScrollView()
    scroll.showsHorizontalScrollIndicator = false
    scroll.translatesAutoresizingMaskIntoConstraints = false
    return scroll
  }()

    override func viewDidLoad() {
        super.viewDidLoad()
      view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
      setupViewConstriants()
      setupScrollView()
    }
  
  override func viewDidLayoutSubviews() {
    scrollView.isScrollEnabled = true
    scrollView.showsVerticalScrollIndicator = false
    scrollView.contentSize = CGSize(width: view.frame.size.width, height: 1000)
  }
  
  func setupScrollView() {
    view.addSubview(scrollView)
    navigationController?.navigationBar.isHidden = true
    scrollView.addSubview(contentView)
    scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2000)
    scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    scrollView.topAnchor.constraint(equalTo: screenLabel.bottomAnchor, constant: 10).isActive = true
    scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
    contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
    contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
  }
  
}
