//
//  Offset.swift
//  Swift-FFDB
//
//  Created by Fidetro on 2018/5/29.
//  Copyright © 2018年 Fidetro. All rights reserved.
//

import Foundation
public struct Offset:STMT {
    var stmt: String
    
    public init(_ stmt: String) {
        self.stmt = " " +
                    "offset" +
                    " " +
                    stmt
    }
    
    
}
