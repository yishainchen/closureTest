//
//  SecondViewController.swift
//  ClosureTest
//
//  Created by B1media on 2016/10/5.
//  Copyright © 2016年 yishainChen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let notificationName = Notification.Name("NotificationIdentifier")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Post notification
        NotificationCenter.default.post(name: notificationName, object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
