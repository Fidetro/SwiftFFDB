//
//  DataModel.swift
//  Swift-FFDBTests
//
//  Created by Fidetro on 26/03/2018.
//  Copyright © 2018 Fidetro. All rights reserved.
//

import Foundation



class DataModel: FFObject {

    
    
    var primaryID: Int64?
    
    var name : String?
    var data : Data?

    required init() {
        
    }
    
    static func primaryKeyColumn() -> String {
        return "primaryID"
    }
    
    static func ignoreProperties() -> [String]? {
        return nil
    }
    
    static func customColumnsType() -> [String : String]? {
        return nil
    }
    
    static func customColumns() -> [String : String]? {
        return nil
    }
    

    
    
}
