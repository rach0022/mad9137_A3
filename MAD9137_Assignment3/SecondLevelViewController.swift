//
//  SecondLevelViewController.swift
//  MAD9137_Assignment3
//
//  Created by Ravi Rachamalla on 2020-11-16.
//

import UIKit

class SecondLevelViewController: UIViewController {
    
    // Properties for the SecondLevelViewController
    // Outlets for the SecondLevelViewController
    @IBOutlet weak var pageABarButtonItem: UIBarButtonItem!
    @IBOutlet weak var pageBBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var levelTwoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Actions connected to the SecondLevelViewController
    
    @IBAction func pageABarButtonAction(_ sender: Any) {
    }
    @IBAction func pageBBarButtonAction(_ sender: Any) {
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
