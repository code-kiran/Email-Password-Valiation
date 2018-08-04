//
//  strings and extensions.swift
//  LoginForm
//
//  Created by kiran on 3/10/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import Foundation

extension String {
    public func isValidEmail() -> Bool {
        let emailRegex = "^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+([.-]?[a-zA-Z0-9]+)?([\\.]{1}[a-zA-Z]{2,4}){1,4}$"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@" ,emailRegex)
        return emailPredicate.evaluate(with:self)
    }
    
    public func isValidPassword() -> Bool {
        let passwordRegex = "^(?=.*[A-Z])(?=.*[0-9].*[0-9]).{8,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }

}
//
//^                         Start anchor
//(?=.*[A-Z].*[A-Z])        Ensure string has two uppercase letters.
//(?=.*[!@#$&*])            Ensure string has one special case letter.
//(?=.*[0-9].*[0-9])        Ensure string has two digits.
//(?=.*[a-z].*[a-z].*[a-z]) Ensure string has three lowercase letters.
//.{8}                      Ensure string is of length 8.
//$                         End anchor.
