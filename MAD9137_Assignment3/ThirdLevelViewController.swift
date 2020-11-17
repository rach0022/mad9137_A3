//
//  ThirdLevelViewController.swift
//  MAD9137_Assignment3
//
//  Created by Ravi Rachamalla on 2020-11-16.
//

import UIKit

class ThirdLevelViewController: UIViewController {

    // Properties for Level Three View Controller
    var currentPage: Page?
    // outlets for the ThirdLevelViewController
    @IBOutlet weak var levelThreeTextView: UITextView!
    
    // methods for the ThirdLevelViewController
    override func viewDidLoad() {
        super.viewDidLoad()

        // First unwrap the currentPage object and then set the
        // title for the page and the text for levelThreeTextView
        // First lets check if we have a page set up and unwrap it
        if let page = currentPage {
            // now we can set up the title, page text and barButtonItems
            // following the same format as the TreeStructureViewController
            if let pageNum = page.pageNumber {
                self.title = "\(pageNum)"
            }
            if let pageText = page.pageText {
                levelThreeTextView.text = "\(pageText)"
            }
        }
    }
    
    @IBAction func restartBarButtonAction(_ sender: Any) {
        // using the reference we have to the navigation controller we can popToRootViewController
        //  to act as the restart button for this app
        // *** CAN WE UNWRAP LIKE THIS? *****
        navigationController?.popToRootViewController(animated: true)
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
