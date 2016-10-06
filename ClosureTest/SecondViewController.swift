//
//  SecondViewController.swift
//  ClosureTest
//
//  Created by B1media on 2016/10/5.
//  Copyright © 2016年 yishainChen. All rights reserved.
//

import UIKit

protocol MyProtocol: class
{
    func sendArrayToPreviousVC(myArray:[AnyObject])
}

protocol CastHandlerDelegate: class {
    
    /// Media Launched successfully on the cast device
    func launchObjectSuccess()
    
}

class SecondViewController: UIViewController {

    weak var mDelegate:MyProtocol?
    weak var delegate: CastHandlerDelegate?
    var myarray: NSArray?
    
    let notificationName = Notification.Name("NotificationIdentifier")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myarray = ["123","456"]
        
        print(myarray)
        // Post notification
        NotificationCenter.default.post(name: notificationName, object: nil)
        
        delegate?.launchObjectSuccess()
        mDelegate?.sendArrayToPreviousVC(myArray: myarray! as [AnyObject])
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
