//
//  ViewController.swift
//  LoginForm
//
//  Created by kiran on 3/10/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum loginError: Error {
        case incompleteForm
        case invalidEmail
        case incorrectPassword
        
    }
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        do {
            try login()
            print("Login successful")
     }
        catch loginError.incompleteForm{
            Alert.showBasic(title: "Empty Field", message: "Please fill the both filed in the form", vc: self)
            
        }
        catch loginError.invalidEmail{
            Alert.showBasic(title: "Invalid Email", message: "Please write valid email", vc: self)
        }
        catch loginError.incorrectPassword{
            Alert.showBasic(title: "Invalid Password", message: "Password must contain atleast 1 capital letter , 2 numbers and 8 or more than 8 letters long ", vc: self)
        }
        catch {
            Alert.showBasic(title: "unvable to login", message: "please fill the form carefully ", vc: self)
        }
    }
    
    //function takes the data from form  and validates the value
func login() throws {
    let email = emailField.text!
    let password = passwordField.text!
    if email.isEmpty || password.isEmpty {
        throw loginError.incompleteForm
    }
    if !email.isValidEmail() {
        throw loginError.invalidEmail
    }
    if !password.isValidPassword() {
        throw loginError.incorrectPassword
    }
    
}

}
