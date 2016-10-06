
//
//  DataModel.swift
//  ClosureTest
//
//  Created by B1media on 2016/10/6.
//  Copyright © 2016年 yishainChen. All rights reserved.
//

import Foundation


class DataModel {
    
    //Callback as Completion Handler
    func requestData(completion: ((_ data: String) -> Void)) {
        // the data was received and parsed to String
        let data = "Data from wherever"
    
        completion(data)
    }
    
    //Callback as a class property
    var onDataUpdate: ((_ data: String) -> Void)?
    func dataRequest() {
        // the data was received and parsed to String
        let data = "test2"
        
        onDataUpdate?(data)
    }
}
