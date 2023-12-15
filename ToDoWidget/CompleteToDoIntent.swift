//
//  CompleteToDoIntent.swift
//  InteractiveWidgetKit
//
//  Created by Vedat Dokuzkardeş on 12.12.2023.
//

import Foundation
import SwiftUI
import AppIntents

struct CompleteToDoIntent : AppIntent{
    
    static var title: LocalizedStringResource = "Complete To Do"
    
    @Parameter(title: "ToDo ID")
    var id : String
    
    init() {
        
    }
    
    init(id: String) {
        self.id = id
    }
    
    func perform() async throws -> some IntentResult {
        
        if let index = SharedDatas.shared.toDos.firstIndex(where: {
            $0.id == id
        }){
            SharedDatas.shared.toDos[index].isDone.toggle()
            print("data update")
        }
        
        return.result()
    }
}
