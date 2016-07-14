//
//  AddItemViewController.swift
//  TodoList
//
//  Created by Joseph Leiferman on 7/13/16.
//  Copyright © 2016 electricBrain. All rights reserved.
//

import Foundation
import UIKit

protocol AddItemViewControllerDelegate: class {
    func addItemViewControllerDidCancel(controller: AddItemViewController)
    func addItemViewController(controller: AddItemViewController, didFinishAddingItem item: ChecklistItem)
    
}


class AddItemViewController: UITableViewController, UITextFieldDelegate {
    
    @IBAction func cancel() {
        delegate?.addItemViewControllerDidCancel(self)
        
    }
    
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func done() {
        let item = ChecklistItem()
        item.text = textField.text!
        item.checked = false
        
        delegate?.addItemViewController(self, didFinishAddingItem: item)
    }
    
    weak var delegate: AddItemViewControllerDelegate?
    
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
