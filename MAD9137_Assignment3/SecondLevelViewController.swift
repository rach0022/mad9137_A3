//
//  SecondLevelViewController.swift
//  MAD9137_Assignment3
//
//  Created by Ravi Rachamalla on 2020-11-16.
//

import UIKit

class SecondLevelViewController: UIViewController {
    
    // Properties for the SecondLevelViewController
    var currentPage: Page?
    var sender: Page? 
    // Outlets for the SecondLevelViewController
    @IBOutlet weak var pageABarButtonItem: UIBarButtonItem!
    @IBOutlet weak var pageBBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var levelTwoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // First lets check if we have a page set up and unwrap it
        if let page = currentPage {
            // now we can set up the title, page text and barButtonItems
            // following the same format as the TreeStructureViewController
            if let pageNum = page.pageNumber {
                self.title = "Page: \(pageNum)"
            }
            if let pageText = page.pageText {
                levelTwoTextView.text = "\(pageText)"
            }
            // ******CANNOT UNWRAP LIKE THIS, ASK ABOUT OPTIONALS IN CLASSES IN CLASS *********
            if let pageANum = page.pageChoiceA?.pageNumber {
                pageABarButtonItem.title = "Choice: \(pageANum)"
            }
            if let pageBNum = page.pageChoiceB?.pageNumber {
                pageBBarButtonItem.title = "Choice: \(pageBNum)"
            }
        }
    }
    
    // Actions connected to the SecondLevelViewController
    
    @IBAction func pageABarButtonAction(_ sender: Any) {
        // first check if teh curentPage was set then check if
        // pageChoiceA was set and then set the sender as PageChoiceA
        if let page = currentPage {
            if let pageA = page.pageChoiceA {
                self.sender = pageA
            }
        }
        performSegue(withIdentifier: "LevelThreeSegue", sender: self)
    }
    @IBAction func pageBBarButtonAction(_ sender: Any) {
        // first check if the curentPage was set then check if
        // pageChoiceB was set and then set the sender as PageChoiceB
        if let page = currentPage {
            if let pageB = page.pageChoiceB {
                self.sender = pageB
            }
        }
        performSegue(withIdentifier: "LevelThreeSegue", sender: self)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        // check if the identifier is LevelThreeSegue and then set the destination controller as the
        // ThirdLevelViewController and the currentPage as the sender
        if segue.identifier == "LevelThreeSegue" {
            // *** WHY DO I HAVE TO UNWRAP AS? ****
            let destinationViewController = segue.destination as? ThirdLevelViewController
            destinationViewController?.currentPage = self.sender
        }
    }
    

    /*
    // MARK: - Navigation

    
    */

}
