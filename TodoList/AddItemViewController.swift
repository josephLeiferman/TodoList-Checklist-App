//
//  AddItemViewController.swift
//  TodoList
//
//  Created by Joseph Leiferman on 7/13/16.
//  Copyright © 2016 electricBrain. All rights reserved.
//

import Foundation
import UIKit


class AddItemViewController: UITableViewController, UITextFieldDelegate {
    
    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func done() {
        
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    // nil is used to tell the table view that there is nothing to select
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        return nil
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    func textField(textField: UITextField, shouldChangeCharacterInRange range: NSRange, replacementString string: String) -> Bool {
        
        let oldText: NSString = textField.text!
        let newText: NSString = oldText.stringByReplacingCharactersInRange(range, withString: string)
        
        
        doneBarButton.enabled = (newText.length>0)
        
        return true
    }
}
