//
//  Extension+String.swift
//  MintynApp
//
//  Created by Pheonix on 12/12/2022.
//

import Foundation


extension String {
  
  var isValidPassword: Bool {
      count > 5 ? true : false
  }
  
  var isValidPhoneNumber: Bool {
      let emailRegEx = "[0-9]{11}"
      let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
      return emailPred.evaluate(with: self)
  }
  
}
