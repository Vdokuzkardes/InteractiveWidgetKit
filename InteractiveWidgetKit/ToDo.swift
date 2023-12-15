//
//  ToDo.swift
//  InteractiveWidgetKit
//
//  Created by Vedat Dokuzkardeş on 12.12.2023.
//

import Foundation

struct ToDo : Identifiable{
    let id : String = UUID().uuidString
    var name : String
    var isDone : Bool = false
}

class SharedDatas {
    
    static let shared = SharedDatas()
    
    var toDos : [ToDo] = [
        .init(name: "Test1"),
        .init(name: "Test2"),
        .init(name: "Test3")
    ]
}
