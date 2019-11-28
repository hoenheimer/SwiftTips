//
//  ViewController.swift
//  ChangeAppIcon
//
//  Created by 张子恒 on 2019/11/28.
//  Copyright © 2019 张子恒. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func changeBtn1(_ sender: UIButton) {
        changeIcon(to: "AppIconAlternate1")
    }
    
    @IBAction func changeBtn2(_ sender: UIButton) {
        changeIcon(to: "AppIconAlternate2")
    }
    @IBAction func changeBtn3(_ sender: UIButton) {
        changeIcon(to: "AppIconAlternate3")
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func changeIcon(to name: String?) {
        //Check if the app supports alternating icons
        guard UIApplication.shared.supportsAlternateIcons else {
            return;
        }
        
        //Change the icon to a specific image with given name
        UIApplication.shared.setAlternateIconName(name) { (error) in
            //After app icon changed, print our error or success message
            if let error = error {
                print("App icon failed to due to \(error.localizedDescription)")
            } else {
                print("App icon changed successfully.")
            }
        }
    }

}

