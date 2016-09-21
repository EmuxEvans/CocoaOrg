//
//  OrgDocument.swift
//  CocoaOrg
//
//  Created by Xiaoxing Hu on 21/09/16.
//  Copyright © 2016 Xiaoxing Hu. All rights reserved.
//

import Foundation

public struct OrgDocument: Node {
    public var settings = [String: String]()
    public var content = [Node]()
    
    public var title: String {
        return settings["TITLE"] ?? ""
    }
    
    public var todos: [String] {
        var todos = ["TODO", "DONE"]
        if let todo = settings["TODO"] {
            todos.append(todo)
        }
        return todos
    }
    
    public var description: String {
        return "OrgDocument(settings: \(settings))\n - \(content)"
    }
}

