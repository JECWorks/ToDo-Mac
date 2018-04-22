//
//  ViewController.swift
//  ToDo
//
//  Created by Jason Cox on 4/21/18.
//  Copyright © 2018 Jason Cox. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var importantCheckbox: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let context = (NSApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let toDoItem = ToDoItem(context: context)
            
            toDoItem.name = textField.stringValue
            if importantCheckbox.state.rawValue == 0 {
                //Not Important
                toDoItem.important = false
            } else {
                // Important
                toDoItem.important = true
            }
            
            (NSApplication.shared.delegate as? AppDelegate)?.saveAction(nil)
        }
    }


    @IBAction func addClicked(_ sender: Any) {
        if textField.stringValue != "" {
            
            
        }
            
    }
    
}

