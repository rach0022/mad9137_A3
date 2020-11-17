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
        storyContent.append("I woke up to the sound of loud knocking at my door and the rain pelting on my windows. “Knock. Knock.” the door kept going, in quick rapid succession. I decided to take my time, whoever needs me this early can wait. It took me a few moments to get myself together, I had the strangest lightheaded feeling, and I didn’t think I was sick nor was I lacking sleep, I passed out immediately after getting home. Having to stay late to run inventory must have tired me out more than I thought. “Knock. Knock”. The pounding kept getting louder by the minute, “Who would need me this early, I just woke up and I don’t start my shift for another few hours” I thought. I climbed out of bed starting to get myself together. “Pants… Check. Shirt… Check, alright who is it! I’ll be there in a second!” I shouted at my bedroom door. Then the horrifying thought dawned upon me, I live alone. My parents should be at home across the world and I didn’t think my tiny dachshund, Oscar gained the ability to knock on the door like a person. I’d be terrified for Oscar if I knew he wasn’t lazy little pup that wouldn’t harm a fly. Probably saw them walking in and went back to sleep. “Alright focus!” I thought, I can’t just answer the door like this and whoever is knocking can clearly hear whatever I do. As I shook my head around in panic and disbelief that someone broke into my house and is politely but loudly knocking on my door; a shimmering green light caught my attention. It was pouring in my room through the vents, but it was the strangest thing, it seemed like whatever the light touches were floating. “Is this even real” my head began to spiral. \n\nOption 1: Check the Vents.\nOption 2: Answer your door.") //Page1
        storyContent.append("“You can wait, something’s up!” I shouted at whoever was my door. Like sound in a vacuum, it had no affect and they kept knocking away. “Knock. Knock.” Always 2 quick beats in successions, similar to a heartbeat. No matter what was knocking at my door they could wait; the light was too surreal. I could see streams of dust swirling around my room all spiraling towards the vent covers. Scraps of paper and clothing slowly levitating in the air as if they were floating in an ocean. All the while the green light was bouncing around the many surfaces in an almost living way. This would have been a beautiful sight to watch if it wasn’t 3:30 in the morning with a home invader knocking on my bedroom door. “Can you just chill for one second!” I shouted back at the door to no effect. They just keep knocking away at the same pattern, almost robotic. A rumbling sound near the vents caught my attention after yelling at the door. My keys were midair at the vent covers clanging away as if they were trying to get out. Alright I needed to look into this, I grabbed my keys and started to pry open the vent cover with them. Releasing more of the green light into my room, lifting everything up slowly higher and higher. I could feel a tug on my head as well, my hair started climbing up standing at its tips. I could almost lift myself up with my fingertips, I was virtually weightless. I peered out through the vents when I noticed a bright light directly above me. Every few moments it would pulse with shadows as if something went past the light. I could make out some of the shapes, birds, circles, maybe even a plane. Just looking out led to more questions than answers. The longer I held myself up near the vent I could feel the walls starting to give way. Crumbling at the tips of my fingers, I had a few moments to either go out with the walls or do something. Looking in my pockets I had some change that I could throw at the whatever the light was coming from.\n\nOption1: Throw the ball out. \nOption2: Break the walls and go outside.") //Page2
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
            self.title = "Page: \(pageNum)"
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
