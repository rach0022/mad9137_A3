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
    @IBOutlet weak var bannerTextLabel: UILabel!
    
    // Methods for the TreeStructureViewController
    override func viewDidLoad() {
        super.viewDidLoad()

        // First lets set up all the text for our pages and then create all the pages
        storyContent.append("I woke up to the sound of loud knocking at my door and the rain pelting on my windows. “Knock. Knock.” the door kept going, in quick rapid succession. I decided to take my time, whoever needs me this early can wait. It took me a few moments to get myself together, I had the strangest lightheaded feeling, and I didn’t think I was sick nor was I lacking sleep, I passed out immediately after getting home. Having to stay late to run inventory must have tired me out more than I thought. “Knock. Knock”. The pounding kept getting louder by the minute, “Who would need me this early, I just woke up and I don’t start my shift for another few hours” I thought. I climbed out of bed starting to get myself together. “Pants… Check. Shirt… Check, alright who is it! I’ll be there in a second!” I shouted at my bedroom door. Then the horrifying thought dawned upon me, I live alone. My parents should be at home across the world and I didn’t think my tiny dachshund, Oscar gained the ability to knock on the door like a person. I’d be terrified for Oscar if I knew he wasn’t lazy little pup that wouldn’t harm a fly. Probably saw them walking in and went back to sleep. “Alright focus!” I thought, I can’t just answer the door like this and whoever is knocking can clearly hear whatever I do. As I shook my head around in panic and disbelief that someone broke into my house and is politely but loudly knocking on my door; a shimmering green light caught my attention. It was pouring in my room through the vents, but it was the strangest thing, it seemed like whatever the light touches were floating. “Is this even real” my head began to spiral. \n\nOption 2: Check the Vents.\nOption 3: Answer your door.") //Page1
        storyContent.append("“You can wait, something’s up!” I shouted at whoever was my door. Like sound in a vacuum, it had no affect and they kept knocking away. “Knock. Knock.” Always 2 quick beats in successions, similar to a heartbeat. No matter what was knocking at my door they could wait; the light was too surreal. I could see streams of dust swirling around my room all spiraling towards the vent covers. Scraps of paper and clothing slowly levitating in the air as if they were floating in an ocean. All the while the green light was bouncing around the many surfaces in an almost living way. This would have been a beautiful sight to watch if it wasn’t 3:30 in the morning with a home invader knocking on my bedroom door. “Can you just chill for one second!” I shouted back at the door to no effect. They just keep knocking away at the same pattern, almost robotic. A rumbling sound near the vents caught my attention after yelling at the door. My keys were midair at the vent covers clanging away as if they were trying to get out. Alright I needed to look into this, I grabbed my keys and started to pry open the vent cover with them. Releasing more of the green light into my room, lifting everything up slowly higher and higher. I could feel a tug on my head as well, my hair started climbing up standing at its tips. I could almost lift myself up with my fingertips, I was virtually weightless. I peered out through the vents when I noticed a bright light directly above me. Every few moments it would pulse with shadows as if something went past the light. I could make out some of the shapes, birds, circles, maybe even a plane. Just looking out led to more questions than answers. The longer I held myself up near the vent I could feel the walls starting to give way. Crumbling at the tips of my fingers, I had a few moments to either go out with the walls or do something. Looking in my pockets I had some change that I could throw at the whatever the light was coming from.\n\nOption 4: Throw the change out. \nOption 5: Break the walls and go outside.") //Page2
        storyContent.append("Alright this knocking needs to stop, worst case I can defend myself against a home invader. No real and vicious home invader would knock, whoever this was clearly wasn’t used to the protocol of breaking and entering and has made a costly mistake. As I began moving towards the door, the knocking became louder. Each step ever increasing the volume of these knocks, clearly whoever was there knew I was coming. The knocks were getting louder and louder, almost as if they were knocking on my brain itself. I began to open the door, with sweat beading down my forehead I became convinced that this was the moment I might find my end. But that was it, the door was opened, and the knocking stopped. No one was there, just an empty hallway and an empty dog bed. There was a strange smell in the house too. Almost metallic, like everything had been disinfected. Looking back in my room the green light was gone as well, the lightheaded feeling, the floating objects, the knocking… All of it was suddenly gone. It took me a few minutes of shock and disbelief to move, it wasn’t until Oscar started nudging into my leg to get out of the way of his bed that I moved. “Oh well,” I thought, “I’m never getting back to sleep after that. Might as well get ready and enjoy some breakfast.”\n\nOption 6: Brush your teeth.\nOption 7: Watch videos online.") //Page3
        storyContent.append("With about 3 dollars of coins in my hand I climbed down from the wall and went to the far side of my room. I decided to huck them out of what used to be the vent opening towards the light. The coins accelerated out of my hands buzzing with a green light towards the opening faster than I could blink as if they had been sucked from my hands. I had been a decent pitcher back in the day, but nothing could go that fast I thought. I raced back towards the wall and peaked my head hoping to catch a glimpse of the coins. I could see tiny little specs of bright green among the sea of green light up above. For minutes I watched spirals towards the light as they grew in size. The closer and closer they got, the bigger the shadows cast from the coins were. Dark shadows were cast down from the coins until they were the size of the moon in the sky as they flew up to the source of the green light. After ten minutes I started getting a little bored and decided to check my phone out. I had no internet connection, must not have paid my bill. Then all of a sudden, I felt a low rumbling all around me. Peeking through the vents again I could see the dark shadows almost completely blocking out the light. One by one, the coins reached the source of the light. Loud metallic clinking sounds could be heard throughout the night sky. The light pulsed with each clink, revealing the night sky to me. The house started to shake, and my head began to sink; the terrible feeling dawned onto me again. Rushing out of my room towards the windows I realized everything, including my mistake. The house was plummeting down with me inside. The objects floating, the green light, the night sky zooming past me, it all made sense. Guess I shouldn’t have tossed those coins I laughed.\nThe End.") //Page4
        storyContent.append("I jumped down off the wall and took a look around my surroundings. “If I’m going to break through the vents and jump into the light, I should be ready for anything” I thought. Grabbing whatever you could, baseball bat, sneakers, car keys and a blue scarf; and prepared yourself for the true unknown. Armed with the scarf and bat you started whaling on the wall, breaking off pieces of dry wall with every hit. The bits of dust and wall all spiral into the vent being sucked into the green light, and before I could react; you got sucked in as well. Faster and faster by the second you were accelerating up towards the green light. After slowly managing to turn my head around against the force up being pulled up I floated in awe as I saw the building, I once called home following up behind me. I was being pulled into the green light, house and all and it all started to make sense. I was being abducted… It was crazy I thought, but what else could make sense. I finally figured out all of the mysteries, the light, the knocking, why I even woke up. It was all perfectly clear. “I wonder if I was supposed to stay inside” I thought as I kept floating upwards getting increasingly cold. The End.") //Page5
        storyContent.append("Still a bit unnerved I began walking towards my washroom to get ready. It was still 6 hours before my shift, but I thought I might as well get on with my day, maybe it was a blessing being woken up this early. As I walked downstairs the pungent smell of disinfectant started to dissipate. “It was almost like someone broke in to clean” I thought, “I didn’t think this place was that messy, I’m sure the neighbors keep it worse than I do”. I started chuckling a little bit, spending all that time in fear and panic first thing in the morning must be terrible for the mind. I should definitely just take it easy the rest of the morning. As I neared the washroom, I opened the door into the and took a step in. Little did I know it was going to be my last step. I fell into the floor, and then out of the house. Tumbling down the whole way until I was suspended in free fall. I could see the house above me. I could even make out a green light attached to the top. Whatever was happening didn’t matter; it was too late to do anything about it. I continued to fall below into the darkness. I kept falling in fact, and never stopped. Time went on, the sun rose and fell. I could see the days past down below me, but I could never reach the end. Forever and ever falling.\nThe End.") //Page6
        storyContent.append("Well, there was nothing I could do about it now, it’s almost 4:00 AM in the morning and I definitely had a psychotic nightmare. “Home Invader?” I laughed, “I have nothing to steal, and I work minimum wage. What was I thinking”, I took my phone of its charger and leapt back into my bed. “Network Error huh.” I thought. I couldn’t connect to anything, WIFI, mobile data, I couldn’t event connect to the Bluetooth speaker in my washroom. Something was up, and I had to get to the bottom of it. Knock. Knock. Out of the silence the knocking began again, this time it was below me under the bed. Knock. Knock. It was a loud piecing knock, something straight out of horror movie I thought. After a few minutes I decided to look and as I peeked under my bed a bright light erupted and filled the room. I felt the floors warp inwards and felt weightless for a few moments as everything around me began to break down. Time was no longer meaningful and as if for hours I was in a swirling vortex of light. Eventually in the middle of the vortex formed a hole that began to swallow everything around it, eventually making its way towards me. After touching the mass, I felt my body being accelerated to another point in space, somewhere far and not on Earth. Eventually I approached another light and felt myself being pulled back and slowly stop moving. The lights stopped and I was alone in a dark room. A voice from out of the darkness echoed out to me, “How was the test run Oscar?” The End.") //Page7
        
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
        
        // we can set the themes for individual pages
        pages[0].setTheme(themeString: "NIGHT-3:00AM")
        pages[1].setTheme(themeString: "ALIEN-3:20AM")
        pages[2].setTheme(themeString: "NIGHT-3:20AM")
        pages[3].setTheme(themeString: "NIGHT-4:30AM")
        pages[4].setTheme(themeString: "DAY-6:00AM")
        pages[5].setTheme(themeString: "NIGHT-FOREVER")
        pages[6].setTheme(themeString: "ALIEN-TIME UNKNOWN")
        
        // now that all the pages are set up, lets display the page number in the navigation bars title (in the first view controller the current page is pages[0])
        if let pageNum = pages[0].pageNumber {
            self.title = "Page: \(pageNum)"
        }
        
        // display the text from the pageText in the textView
        if let pageText = pages[0].pageText {
            levelOneTextView.text = pageText
        }
        pages[0].showUITheme(textLabel: bannerTextLabel, view: self.view)
        
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
