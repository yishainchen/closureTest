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

class ViewController: UIViewController ,MyProtocol {

    @IBOutlet weak var myText: UILabel!
    
    private let dataModel = DataModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dataModel.delegate = self
        dataModel.requestDataDelegate()
        
        //Callback as a class property
//        dataModel.onDataUpdate = { [weak self] (data: String) in
//            self?.useData(data: data)
//        }
//        dataModel.dataRequest()
        
        
        
        //Callback as Completion Handler
//        dataModel.requestData { [weak self] (data: String) in
//            self?.useData(data: data)
//        }

    }
    
    private func useData(data: String) {
        print(data)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sendArrayToPreviousVC(myArray:[AnyObject]) {
        //DO YOUR THING
        print (myArray)
        self.myText.text = myArray[0] as? String
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let friendViewController = (segue.destination as! SecondViewController)
        friendViewController.mDelegate = self
    }
    
   
        
  

}

