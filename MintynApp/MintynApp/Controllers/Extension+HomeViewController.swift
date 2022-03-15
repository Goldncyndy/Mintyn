//
//  Extension+HomeViewController.swift
//  MintynApp
//
//  Created by Decagon on 15/03/2022.
//

import UIKit

extension HomeViewController {
  
  func setupViewConstriants() {
    view.addSubview(screenLabel)
    view.addSubview(topBellIcon)
    contentView.addSubview(BannerCardView)
    BannerCardView.addSubview(availableBalanceLabel)
    BannerCardView.addSubview(actualBalanceLabel)
    BannerCardView.addSubview(fundAccountButton)
    contentView.addSubview(CardView)
    contentView.addSubview(advertBannerCardView)
    contentView.addSubview(daysDataCardView)
    daysDataCardView.addSubview(todayButton)
    daysDataCardView.addSubview(last7daysButton)
    daysDataCardView.addSubview(daysYellowView)
    daysDataCardView.addSubview(daysYellowLabel)
    daysDataCardView.addSubview(daysYellowAmountLabel)
    daysDataCardView.addSubview(daysPinkView)
    daysDataCardView.addSubview(daysPinkLabel)
    daysDataCardView.addSubview(daysPinkAmountLabel)
    daysDataCardView.addSubview(dataImageView)
    contentView.addSubview(completeVerificationCardView)
    contentView.addSubview(userCardView)
    contentView.addSubview(userImageView)
    contentView.addSubview(userNameLabel)
    contentView.addSubview(accountNumberLabel)
    contentView.addSubview(dropDownIcon)
    contentView.addSubview(copyButton)
    contentView.addSubview(ledgerBalanceLabel)
    contentView.addSubview(ledgerBalanceAmountLabel)
    contentView.addSubview(switchButton)
    contentView.addSubview(hideBalanceLabel)
    advertBannerCardView.addSubview(firstLineAdvertLabel)
    advertBannerCardView.addSubview(advertAmountLabel)
    advertBannerCardView.addSubview(earnLabel)
    advertBannerCardView.addSubview(percentLabel)
    advertBannerCardView.addSubview(interestLabel)
    advertBannerCardView.addSubview(investButton)
    contentView.addSubview(scrollIndicatorLabel)
    contentView.addSubview(bottomView)
    
    
    
    let userInfoStack = UIStackView(arrangedSubviews: [userNameLabel, accountNumberLabel, dropDownIcon])
    userInfoStack.distribution = .equalSpacing
    userInfoStack.spacing = 1
    userInfoStack.axis = .horizontal
    userInfoStack.alignment = .lastBaseline
    userInfoStack.translatesAutoresizingMaskIntoConstraints = false
    contentView.addSubview(userInfoStack)
    
    let accountBalanceStack = UIStackView(arrangedSubviews: [availableBalanceLabel, actualBalanceLabel])
    accountBalanceStack.distribution = .equalSpacing
    accountBalanceStack.spacing = 3
    accountBalanceStack.axis = .vertical
    accountBalanceStack.alignment = .leading
    accountBalanceStack.translatesAutoresizingMaskIntoConstraints = false
    BannerCardView.addSubview(accountBalanceStack)
    
    let ledgerStack = UIStackView(arrangedSubviews: [ledgerBalanceLabel, ledgerBalanceAmountLabel])
    ledgerStack.distribution = .fill
    ledgerStack.spacing = 2
    ledgerStack.axis = .horizontal
    ledgerStack.alignment = .leading
    ledgerStack.translatesAutoresizingMaskIntoConstraints = false
    contentView.addSubview(ledgerStack)
    
    let toggleBalanceStack = UIStackView(arrangedSubviews: [switchButton, hideBalanceLabel])
    toggleBalanceStack.distribution = .equalSpacing
    toggleBalanceStack.spacing = 10
    toggleBalanceStack.axis = .horizontal
    toggleBalanceStack.alignment = .center
    toggleBalanceStack.translatesAutoresizingMaskIntoConstraints = false
    contentView.addSubview(toggleBalanceStack)
    
    let earnStack = UIStackView(arrangedSubviews: [earnLabel, percentLabel])
    earnStack.distribution = .fill
    earnStack.spacing = 5
    earnStack.axis = .horizontal
    earnStack.alignment = .leading
    earnStack.translatesAutoresizingMaskIntoConstraints = false
    advertBannerCardView.addSubview(earnStack)
    
    let advertStack = UIStackView(arrangedSubviews: [firstLineAdvertLabel, advertAmountLabel, earnStack, interestLabel])
    advertStack.distribution = .equalSpacing
    advertStack.spacing = 1
    advertStack.axis = .vertical
    advertStack.alignment = .leading
    advertStack.translatesAutoresizingMaskIntoConstraints = false
    advertBannerCardView.addSubview(advertStack)
    
    let daysDataStack = UIStackView(arrangedSubviews: [todayButton, last7daysButton])
    daysDataStack.distribution = .fill
    daysDataStack.spacing = 10
    daysDataStack.axis = .horizontal
    daysDataStack.alignment = .leading
    daysDataStack.translatesAutoresizingMaskIntoConstraints = false
    daysDataCardView.addSubview(daysDataStack)
    
    let daysFirstStack = UIStackView(arrangedSubviews: [daysYellowView, daysYellowLabel])
    daysFirstStack.distribution = .fill
    daysFirstStack.spacing = 3
    daysFirstStack.axis = .horizontal
    daysFirstStack.alignment = .leading
    daysFirstStack.translatesAutoresizingMaskIntoConstraints = false
    daysDataCardView.addSubview(daysFirstStack)
    
    let daysSecondStack = UIStackView(arrangedSubviews: [daysPinkView, daysPinkLabel])
    daysSecondStack.distribution = .fill
    daysSecondStack.spacing = 3
    daysSecondStack.axis = .horizontal
    daysSecondStack.alignment = .leading
    daysSecondStack.translatesAutoresizingMaskIntoConstraints = false
    daysDataCardView.addSubview(daysSecondStack)
    
    NSLayoutConstraint.activate ([
      // MARK: - welcome label Constraints
      screenLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
      screenLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
      // MARK: - Bell icon Constraints
      topBellIcon.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
      topBellIcon.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
      topBellIcon.heightAnchor.constraint(equalToConstant: 25),
      topBellIcon.widthAnchor.constraint(equalToConstant: 25),
      // MARK: - USER PROFILE IMAGE CONSTRAINT
      userCardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
      userCardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
      userCardView.widthAnchor.constraint(equalToConstant: 45),
      userCardView.heightAnchor.constraint(equalToConstant: 45),
      // MARK: IMAGE CONSTRAINT
      userImageView.topAnchor.constraint(equalTo: userCardView.topAnchor, constant: 0),
      userImageView.leadingAnchor.constraint(equalTo: userCardView.leadingAnchor, constant: 0),
      userImageView.trailingAnchor.constraint(equalTo: userCardView.trailingAnchor, constant: 0),
      userImageView.widthAnchor.constraint(equalToConstant: 45),
      userImageView.heightAnchor.constraint(equalToConstant: 45),
      // MARK: - USER COPY BUTTON CONSTRAINT
      copyButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
      copyButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
      copyButton.heightAnchor.constraint(equalToConstant: 40),
      copyButton.widthAnchor.constraint(equalToConstant: 70),
      // MARK: - USER INFORMATION STACK CONSTRAINT
      userInfoStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
      userInfoStack.leadingAnchor.constraint(equalTo: userCardView.trailingAnchor, constant: 5),
      // MARK: - Banner Card Constraints
      BannerCardView.topAnchor.constraint(equalTo: userCardView.bottomAnchor, constant: 20),
      BannerCardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
      BannerCardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
      BannerCardView.heightAnchor.constraint(equalToConstant: 120),
      // MARK: - USER ACCOUNT BALANCE INFORMATION STACK CONSTRAINT
      accountBalanceStack.centerYAnchor.constraint(equalTo: BannerCardView.centerYAnchor),
      accountBalanceStack.leadingAnchor.constraint(equalTo: BannerCardView.leadingAnchor, constant: 15),
      // MARK: - FUND ACCOUNT BUTTON CONSTRAINT
      fundAccountButton.centerYAnchor.constraint(equalTo: BannerCardView.centerYAnchor),
      fundAccountButton.trailingAnchor.constraint(equalTo: BannerCardView.trailingAnchor, constant: -15),
      fundAccountButton.widthAnchor.constraint(equalToConstant: 130),
      fundAccountButton.heightAnchor.constraint(equalToConstant: 40),
      // MARK: - USER LEDGER BALANCE STACK CONSTRAINT
      ledgerStack.topAnchor.constraint(equalTo: BannerCardView.bottomAnchor, constant: 23),
      ledgerStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
      // MARK: - SWITCH TO HIDE OR SHOW LEDGER BALANCE STACK CONSTRAINT
      toggleBalanceStack.topAnchor.constraint(equalTo: BannerCardView.bottomAnchor, constant: 20),
      toggleBalanceStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
      // MARK: - Advert Banner Card Constraints
      advertBannerCardView.topAnchor.constraint(equalTo: ledgerStack.bottomAnchor, constant: 35),
      advertBannerCardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
      advertBannerCardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
      advertBannerCardView.heightAnchor.constraint(equalToConstant: 130),
      // advert content
      advertStack.centerYAnchor.constraint(equalTo: advertBannerCardView.centerYAnchor),
      advertStack.leadingAnchor.constraint(equalTo: advertBannerCardView.leadingAnchor, constant: 15),
      advertStack.heightAnchor.constraint(equalToConstant: 90),
      firstLineAdvertLabel.topAnchor.constraint(equalTo: advertBannerCardView.topAnchor, constant: 16),
      advertAmountLabel.topAnchor.constraint(equalTo: firstLineAdvertLabel.bottomAnchor, constant: 1),
      earnStack.topAnchor.constraint(equalTo: advertAmountLabel.bottomAnchor, constant: 1),
      interestLabel.topAnchor.constraint(equalTo: earnStack.bottomAnchor, constant: 1),
      // advert button
      investButton.centerYAnchor.constraint(equalTo: advertBannerCardView.centerYAnchor),
      investButton.trailingAnchor.constraint(equalTo: advertBannerCardView.trailingAnchor, constant: -15),
      investButton.widthAnchor.constraint(equalToConstant: 100),
      investButton.heightAnchor.constraint(equalToConstant: 30),
      // scroll indicator constraints
      scrollIndicatorLabel.topAnchor.constraint(equalTo: advertStack.bottomAnchor, constant: 1),
      scrollIndicatorLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 100),
      scrollIndicatorLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -100),
      // MARK: - Days Data Card Constraints
      daysDataCardView.topAnchor.constraint(equalTo: scrollIndicatorLabel.bottomAnchor, constant: 15),
      daysDataCardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
      daysDataCardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
      daysDataCardView.heightAnchor.constraint(equalToConstant: 180),
      // MARK: - DAYS DATA BUTTONS
      daysDataStack.topAnchor.constraint(equalTo: daysDataCardView.topAnchor, constant: 10),
      daysDataStack.centerXAnchor.constraint(equalTo: daysDataCardView.centerXAnchor),
      // MARK: - TODAYS DAYS DATA BUTTON
      todayButton.heightAnchor.constraint(equalToConstant: 25),
      todayButton.widthAnchor.constraint(equalToConstant: 85),
      // MARK: - 7 DAYS DATA BUTTON
      last7daysButton.heightAnchor.constraint(equalToConstant: 25),
      last7daysButton.widthAnchor.constraint(equalToConstant: 85),
      // MARK: - DAYS DATA VIEWS
      daysPinkView.heightAnchor.constraint(equalToConstant: 15),
      daysPinkView.widthAnchor.constraint(equalToConstant: 15),
      daysYellowView.heightAnchor.constraint(equalToConstant: 15),
      daysYellowView.widthAnchor.constraint(equalToConstant: 15),
      // Mark: - DATA ANALYSIS STACKS
      daysFirstStack.topAnchor.constraint(equalTo: todayButton.bottomAnchor, constant: 15),
      daysFirstStack.leadingAnchor.constraint(equalTo: daysDataCardView.leadingAnchor, constant: 15),
      
      daysYellowAmountLabel.topAnchor.constraint(equalTo: daysFirstStack.bottomAnchor, constant: 5),
      daysYellowAmountLabel.leadingAnchor.constraint(equalTo: daysDataCardView.leadingAnchor, constant: 15),
      
      daysSecondStack.topAnchor.constraint(equalTo: daysYellowAmountLabel.bottomAnchor, constant: 15),
      daysSecondStack.leadingAnchor.constraint(equalTo: daysDataCardView.leadingAnchor, constant: 15),
      
      daysPinkAmountLabel.topAnchor.constraint(equalTo: daysSecondStack.bottomAnchor, constant: 5),
      daysPinkAmountLabel.leadingAnchor.constraint(equalTo: daysDataCardView.leadingAnchor, constant: 15),
      dataImageView.topAnchor.constraint(equalTo: todayButton.bottomAnchor, constant: 20),
      dataImageView.trailingAnchor.constraint(equalTo: daysDataCardView.trailingAnchor, constant: -20),
      dataImageView.heightAnchor.constraint(equalToConstant: 90),
      dataImageView.widthAnchor.constraint(equalToConstant: 90),
      // MARK: - complete verification Card Constraints
      completeVerificationCardView.topAnchor.constraint(equalTo: daysDataCardView.bottomAnchor, constant: 30),
      completeVerificationCardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
      completeVerificationCardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
      completeVerificationCardView.heightAnchor.constraint(equalToConstant: 50),
      // MARK: - page View Constraints
      CardView.topAnchor.constraint(equalTo: completeVerificationCardView.bottomAnchor, constant: 20),
      CardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 1),
      CardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -1),
      //CardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
      CardView.heightAnchor.constraint(equalToConstant: 500),
      // bottom view
      bottomView.topAnchor.constraint(equalTo: CardView.bottomAnchor, constant: -10),
      bottomView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 1),
      bottomView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -1),
      bottomView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
      bottomView.heightAnchor.constraint(equalToConstant: 100)
      
        ])
    }
}
