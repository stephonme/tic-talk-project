//
//  CompleteToDoViewController.swift
//  tic talk
//
//  Created by Steph1 on 7/30/20.
//  Copyright © 2020 Stephanie Jacobo. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    var selectedToDo : ToDoCD?

    
    
    
    @IBAction func completeTapped(_ sender: UIButton) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }

        let context = appDelegate.persistentContainer.viewContext

        if let theToDo = selectedToDo {
            context.delete(theToDo)
            navigationController?.popViewController(animated: true)
        }
    }
        
        
//        if let context = UIApplication.shared.delegate as? AppDelegate.persistentContainer.viewContext {
//          if let theToDo = selectedToDo {
//            context.delete(theToDo)
//            navigationController?.popViewController(animated: true)
//          }
//        }
//    }
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
     override func viewDidLoad() {
            super.viewDidLoad()
            titleLabel.text = selectedToDo?.name
            // Do any additional setup after loading the view.
        }

    }

    




    
