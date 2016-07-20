//
//  ChecklistItem.swift
//  TodoList
//
//  Created by Joseph Leiferman on 7/12/16.
//  Copyright © 2016 electricBrain. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}