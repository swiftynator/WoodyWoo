//
//  SignUpViewController.swift
//  WoodyWoo
//
//  Created by Свиридков Евгений on 01.05.2018.
//  Copyright © 2018 T-sterone. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class SignUpViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        handleTextField()
        registerButtonOutlet.isEnabled = false
    }
    
    func handleTextField() {
        userTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        emailTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
    }
    
    @objc func textFieldDidChange() {
        guard let username = userTextField.text, !username.isEmpty, let email = emailTextField.text, !email.isEmpty else {
            registerButtonOutlet.isEnabled = false
            return
        }
        if (passwordTextField.text?.count)! > 5 {
            registerButtonOutlet.isEnabled = true
        } else {
            registerButtonOutlet.isEnabled = false
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print(error?.localizedDescription ?? "error")
            }
            let userId = user?.uid
            let ref = Database.database().reference()
            let refUsers = ref.child("users")
            let newUserReference = refUsers.child(userId!)
            newUserReference.setValue(["username":self.userTextField.text, "email": self.emailTextField.text, "userId": userId])
        }
    }
    
    @IBAction func SignInBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
