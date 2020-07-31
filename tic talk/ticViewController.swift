//
//  ticViewController.swift
//  tic talk
//
//  Created by Taylor Cho on 7/31/20.
//  Copyright © 2020 Stephanie Jacobo. All rights reserved.
//

import UIKit

class ticViewController: UIViewController {

    
    @IBAction func noneButton(_ sender: Any) {
        let alertController = UIAlertController(title: "tic frequency", message: "good to hear!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "close", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func sometimesButton(_ sender: Any) {
        let alertController = UIAlertController(title: "tic frequency", message: "i hope it was okay", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "close", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func oftenButton(_ sender: Any) {
        let alertController = UIAlertController(title: "tic frequency", message: "let's talk about it and hope tomorrow is better", preferredStyle: .alert)
               alertController.addAction(UIAlertAction(title: "close", style: .default))
               self.present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
