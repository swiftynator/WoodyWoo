//
//  ChatViewController.swift
//  WoodyWoo
//
//  Created by Свиридков Евгений on 01.05.2018.
//  Copyright © 2018 T-sterone. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController, UITabBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.tintColor = UIColor(rgb: 0x0594A4)
        self.tabBarController?.tabBar.barTintColor = UIColor(rgb: 0x00030D)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
