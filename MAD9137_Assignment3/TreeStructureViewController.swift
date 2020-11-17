//
//  TreeStructureViewController.swift
//  MAD9137_Assignment3
//
//  Created by Ravi Rachamalla on 2020-11-16.
//

import UIKit

class TreeStructureViewController: UIViewController {
    
    //properties for the TreeStructureViewController
    // pages is a collection that contains all the pages for the app (starting with 7)
    // storyContent is a collection that will hold all the string values for each page
    // of the alien abduction story
    var pages = [Page]()
    var storyContent = [String]()
    let storyLevels = 2 // the number of levels in the story
    
    // Outlets for the view controller
    @IBOutlet weak var pageABarButtonItem: UIBarButtonItem!
    @IBOutlet weak var pageBBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var levelOneTextView: UITextView!
    
    // Methods for the TreeStructureViewController
    override func viewDidLoad() {
        super.viewDidLoad()

        // First lets set up all the text for our pages and then create all the pages
        storyContent.append("") //Page1
        storyContent.append("") //Page2
        storyContent.append("") //Page3
        storyContent.append("") //Page4
        storyContent.append("") //Page5
        storyContent.append("") //Page6
        storyContent.append("") //Page7
        
        for (index, story) in self.storyContent.enumerated() {
            pages.append(Page(_pageNumber: index, _pageText: story))
        }
        
        // now lets set up the A-B Tree Structure between the page elements knowing that page 1 (index 0)
        // will point to either page 2 or 3 index(1 or 2), page 2 will point to either 4 or 5 and page 3
        // will point to either 3 point to page 6 or 7 (index 5 or 6)
        for i in 0...self.storyLevels {
            self.pages[i].pageChoiceA = self.pages[i + 1 + i]
            self.pages[i].pageChoiceB = self.pages[i + 2 + i]
        }
        
    }
    
    // action connected to this view controller 2 for the barbutton items
    
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
