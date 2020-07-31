//
//  DiaryViewController.swift
//  tic talk
//
//  Created by Steph1 on 7/29/20.
//  Copyright © 2020 Stephanie Jacobo. All rights reserved.
//

import UIKit

class DiaryViewController: UIViewController {

    @IBAction func greatButton(_ sender: Any) {
        let alertController = UIAlertController(title: "mood log", message: "that's awesome!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "close", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func okayButton(_ sender: Any) {
        let alertController = UIAlertController(title: "mood log", message: "i hope it gets better <3", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "close", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func sadButton(_ sender: Any) {
        let alertController = UIAlertController(title: "mood log", message: "let's take some time to reflect", preferredStyle: .alert)
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
