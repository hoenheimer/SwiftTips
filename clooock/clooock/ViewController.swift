//
//  ViewController.swift
//  clooock
//
//  Created by 张子恒 on 2019/12/2.
//  Copyright © 2019 张子恒. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CurrentTime: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        let date = NSDate()
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "HH:mm:ss"
        let strNowTime = dateformatter.string(from: date as Date) as String
        CurrentTime.text = strNowTime

        // Do any additional setup after loading the view.
    }


}

