//
//  LoginViewController.swift
//  Parstagram
//
//  Created by Sathya Sri Pasham on 10/3/20.
//  Copyright © 2020 Sathya Sri Pasham. All rights reserved.
//

import UIKit
import Parse
class LoginViewController: UIViewController {

   
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        user.signUpInBackground{(success,error) in
            if success{
                self.performSegue(withIdentifier:"loginSegue", sender: nil)
            }
            else{
                print("error occured while sign up")
            }
        }
    }
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!;
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if user != nil {
              self.performSegue(withIdentifier:"loginSegue", sender: nil)
            }
            else{
                print("error occured while sign in")
            }
        }
        
    }
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
