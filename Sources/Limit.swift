//
//  Limit.swift
//  Swift-FFDB
//
//  Created by Fidetro on 2018/5/29.
//  Copyright © 2018年 Fidetro. All rights reserved.
//

import Foundation
public struct Limit:STMT {
    var stmt: String
    
    public init(_ stmt: String) {
        self.stmt = " " +
                    "limit" +
                    " " +
                    stmt
    }
    
    
    public func offset(_ offset:String) -> Offset {
        return Offset(stmt +
                    " " +
                    offset)
    }
}
