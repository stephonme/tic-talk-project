//
//  AddToDoViewController.swift
//  tic talk
//
//  Created by Steph1 on 7/30/20.
//  Copyright © 2020 Stephanie Jacobo. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: Any) {

            // we have to grab this view context to be able to work with Core Data
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                
                let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)

                
               
                if let titleText = titleTextField.text {
                   
                    toDo.name = titleText
                    toDo.important = importantSwitch.isOn
                }
                
                try? context.save()
                navigationController?.popViewController(animated: true)
            
            
            if let titleText = titleTextField.text {
                toDo.name = titleText
                toDo.important = importantSwitch.isOn
                }
            }
        }
    }

    
    
    
    
    
    
    
    
    
    
    
    
    





