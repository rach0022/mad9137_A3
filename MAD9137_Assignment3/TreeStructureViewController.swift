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
    var sender: Page?
    
    // Outlets for the view controller
    @IBOutlet weak var pageABarButtonItem: UIBarButtonItem!
    @IBOutlet weak var pageBBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var levelOneTextView: UITextView!
    
    // Methods for the TreeStructureViewController
    override func viewDidLoad() {
        super.viewDidLoad()

        // First lets set up all the text for our pages and then create all the pages
        storyContent.append("Knock. Knock. You hear from your door. Very slowly you start to open you eyes. Your head feels strange, lightheaded but not sick. Almost as if you were in an elevator. The knocking gets louder, you start to approach the door when you notice a loud hissing sound from your vents. Almost as if air was being sucked out. The knocking increasingly gets louder. Check the vents, or check your door?") //Page1
        storyContent.append("Peeking out the vents you notice a strange green light coming form the other side. Also birds flying. Yuo decide to drop something out of the covers. It floats up... fast") //Page2
        storyContent.append("You opened your door only to find a bleak empty area. The house smells strange this morning, almost metallic as you walked to brush your teeth") //Page3
        storyContent.append("After assembling together the best defense you could find. A base ball bat and some flint and steel for lightining campfires you kick open the vent covers. Parts of the drywall start peicing off into the green light, you make the jump up") //Page4
        storyContent.append("Slowly you take off the vent covers and began panicking as the hissing and knockign gets louder. You take your baseball and whip it out the window. 'That throw would have been great before we lost the finals' you thought. Nothing happens for some time but there is nothing that can be done. Not wanting to answer the door you grab the nearest book, kick your legs up onto your chair and start reading. The knocking get so loud that you start to get annoyed, putting in headphones to ignore it. Then out of nowhere you feel a halt, the whole house shook from some type of earthquake. But your in the sky you think? We must have stopped. After the rumbling stopped your baseball came roaring through your vents") //Page5
        storyContent.append("") //Page6
        storyContent.append("") //Page7
        
        for (index, story) in self.storyContent.enumerated() {
            pages.append(Page(_pageNumber: (index + 1), _pageText: story))
        }
        
        // now lets set up the A-B Tree Structure between the page elements knowing that page 1 (index 0)
        // will point to either page 2 or 3 index(1 or 2), page 2 will point to either 4 or 5 and page 3
        // will point to either 3 point to page 6 or 7 (index 5 or 6)
        for i in 0...self.storyLevels {
            self.pages[i].pageChoiceA = self.pages[i + 1 + i]
            self.pages[i].pageChoiceB = self.pages[i + 2 + i]
        }
        
        // now that all the pages are set up, lets display the page number in the navigation bars title (in the first view controller the current page is pages[0])
        if let pageNum = pages[0].pageNumber {
            self.title = "\(pageNum)"
        }
        
        // display the text from the pageText in the textView
        if let pageText = pages[0].pageText {
            levelOneTextView.text = pageText
        }
        
        // now display pageChoiceA and B's page number in the correspondingBarButtonItem
        // ******** CANNOT UNWRAP LIKE THIS, ASK HOW TO SET UP CLASS TO UNWRAP FOR US **********
        if let pageChoiceANum = pages[0].pageChoiceA?.pageNumber {
            pageABarButtonItem.title = "Choice: \(pageChoiceANum)"
        }
        if let pageChoiceBNum = pages[0].pageChoiceB?.pageNumber {
            pageBBarButtonItem.title = "Choice: \(pageChoiceBNum)"
        }
        
        
    }
    
    // actions connected to this view controller 2 for the barbutton items
    @IBAction func pageABarButtonAction(_ sender: Any) {
        // first check if pageChoiceA was set and then set the sender as PageChoiceA
        if let pageA = pages[0].pageChoiceA {
            self.sender = pageA
        }
        performSegue(withIdentifier: "LevelTwoSegue", sender: self)
    }
    
    @IBAction func pageBBarButtonAction(_ sender: Any) {
        // first check if pageChoiceB was set and then set the sender as PageChoiceB
        if let pageB = pages[0].pageChoiceB {
            self.sender = pageB
        }
        performSegue(withIdentifier: "LevelTwoSegue", sender: self)
    }
    
    // prepare function for the segue
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        // first check if the segue is the right one with its identifier LevelTwoSegue
        if segue.identifier == "LevelTwoSegue" {
            // lets typecast? (or is this polymorphism?) the desitinationViewController
            // as the SecondLevelViewController since we confirmed the segue and set the proper page object
            let destinationViewController = segue.destination as? SecondLevelViewController
            // **** CAN WE UNWRAP LIKE THIS FOR THE DESTINATION VIEW CONTROLLER? *******
            destinationViewController?.currentPage = self.sender
        }
    }
    

    /*
    // MARK: - Navigation

    
    */

}
