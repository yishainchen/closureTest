//
//  ViewController.swift
//  ClosureTest
//
//  Created by B1media on 2016/10/5.
//  Copyright © 2016年 yishainChen. All rights reserved.
//

extension ViewController: DataModelDelegate {
    func didRecieveDataUpdate(data: String) {
        print(data)
    }
}

import UIKit

class ViewController: UIViewController  {

    
    let notificationName = Notification.Name("NotificationIdentifier")
    @IBOutlet weak var myText: UILabel!
    
    private let dataModel = DataModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.methodOfReceivedNotification), name: notificationName, object: nil)
        
        // Do any additional setup after loading the view, typically from a nib.
        
        dataModel.delegate = self
        dataModel.requestDataDelegate()
        
        //Callback as a class property
//        dataModel.onDataUpdate = { [weak self] (data: String) in
//            self?.useData(data: data)
//        }
//        dataModel.dataRequest()
        
        
        
//        Callback as Completion Handler
        dataModel.requestData { [weak self] (data: String) in
            self?.useData(data: data)
        }

    }
    
    private func useData(data: String) {
        print(data)
        myText.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func methodOfReceivedNotification (){
        print("notification success")
        myText.text = "notification success"
        
    }
  

}

