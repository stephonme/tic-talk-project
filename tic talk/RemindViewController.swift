//
//  RemindViewController.swift
//  tic talk
//
//  Created by Steph1 on 7/29/20.
//  Copyright © 2020 Stephanie Jacobo. All rights reserved.
//

import UIKit

class RemindViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    weak var n1txt: UITextField!{
        class RemindViewController: UIViewController, UITextViewDelegate {

        @IBOutlet var itemEntryTextView: UITextView?

        @IBAction func cancel(_ sender: Any) {
            dismiss(animated: true, completion: nil)
        }
        @IBAction func saveItem(_ sender: Any) {

                guard let enteredText = itemEntryTextView?.text else {
                    return
                }
            
                if enteredText.isEmpty ||  itemEntryTextView?.text == "Type anything..."{
           
                let alert = UIAlertController(title: "Please Type Something", message: "Your entry was left blank.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Okay", style: .default)) { action in

                }

                self.present(alert, animated: true, completion: nil)

            } else {
                
                    guard let entryText = itemEntryTextView?.text else {
                        return
                    }
               
                    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                    let newEntry = Item(context: context)
                    newEntry.name = entryText
                    
                    (UIApplication.shared.delegate as! AppDelegate).saveContext()
                    
                    dismiss(animated: true, completion: nil)

            }

        }
    }
    
    @IBOutlet weak var n2txt: UITextField!
    
    @IBOutlet weak var n3txt: UITextField!
    
    @IBOutlet weak var n4txt: UITextField!
    
    
    @IBOutlet weak var n5txt: UITextField!
    
    
    @IBOutlet weak var n6txt: UITextField!
    
    @IBOutlet weak var n7txt: UITextField!
    
    @IBOutlet weak var n8txt: UITextField!
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
