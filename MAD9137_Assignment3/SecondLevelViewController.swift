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
                self.title = "\(pageNum)"
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
