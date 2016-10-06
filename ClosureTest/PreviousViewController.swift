//
//  PreviousViewController.swift
//  ClosureTest
//
//  Created by B1media on 2016/10/5.
//  Copyright © 2016年 yishainChen. All rights reserved.
//

import UIKit

class PreviousViewController: UIViewController, CastHandlerDelegate {

    
    let notificationName = Notification.Name("NotificationIdentifier")
    override func viewDidLoad() {
        super.viewDidLoad()
        let my = SecondViewController()
        my.delegate = self
        // Do any additional setup after loading the view.
        
        
        // Register to receive notification
        NotificationCenter.default.addObserver(self, selector: #selector(self.methodOfReceivedNotification), name: notificationName, object: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func methodOfReceivedNotification (){
    
    
    }

    func launchObjectSuccess() {
        print("Media launched!")
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
