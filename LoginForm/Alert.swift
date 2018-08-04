//
//  alart.swift
//  LoginForm
//
//  Created by kiran on 3/10/18.
//  Copyright © 2018 kiran. All rights reserved.
//
import UIKit
import Foundation
class Alert {
   class  func showBasic(title: String, message: String, vc: UIViewController) {
        let alert =  UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
    
}
