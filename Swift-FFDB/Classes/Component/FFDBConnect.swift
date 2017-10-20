//
//  FFDBConnect.swift
//  Swift-FFDB
//
//  Created by Fidetro on 2017/10/14.
//  Copyright © 2017年 Fidetro. All rights reserved.
//

public protocol FFDBConnect {
    static func executeDBUpdate(sql:String) -> Bool
    static func executeDBUpdateAfterClose(sql:String) -> Bool
    static func executeDBQuery<T:Decodable>(return type:T.Type, sql:String) -> Array<Decodable>?
    static func columnExists(_ columnName : String, inTableWithName: String) -> Bool
    
}

extension FFDBConnect {
    
}

public enum FFDBConnectType {
    case FMDB
    case PerfectMySQL
    public   func connect() -> FFDBConnect.Type {
        switch self {
        case .FMDB:
            return FMDBConnect.self
        case .PerfectMySQL:
            return PerfectMySQLConnect.self
            
        }
    }
}