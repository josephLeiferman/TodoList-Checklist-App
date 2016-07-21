//
//  ChecklistItem.swift
//  TodoList
//
//  Created by Joseph Leiferman on 7/12/16.
//  Copyright © 2016 electricBrain. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject, NSCoding {
    var text = ""
    var checked = false
    
    // protocol functions
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(text, forKey: "Text")
        aCoder.encodeBool(checked, forKey: "Checked")
    }
    
    required init?(coder aDecoder: NSCoder) {
        text = aDecoder.decodeObjectForKey("Text") as! String
        checked = aDecoder.decodeBoolForKey("Checked")
        super.init()
    }
    
    
    // other functions
    override init() {
        super.init()
    }
    
    func toggleChecked() {
        checked = !checked
    }
    
}