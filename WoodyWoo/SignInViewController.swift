//
//  SignInViewController.swift
//  WoodyWoo
//
//  Created by Свиридков Евгений on 01.05.2018.
//  Copyright © 2018 T-sterone. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
