# iOS Assignment 3 - MAD9137
# Follow your choices, Alien Invasion Select Your Way Adventure

> In this assignment, you will be building an interactive pick-a-path story. If you are unfamiliar with the concept of a pick-a-path story, this is a story that is not read in linear order (i.e. you do NOT read the book from page 1, 2, 3, ….End.) Instead, after reading each page, the story gives the reader a set of choices they can pick from that lead them to different pages in the book, guiding them through the story in a non-linear order.

## Marks Rubric
Create the views, and viewController files (4pt)

- [ ] Create a Single View application project (1pt)
- [ ] Add 2 more views (1pt)
- [ ] Add 2 new ViewController files and assign them to the new views (2pt)

Make a class called “Page” to hold all the info about a single page in the story (6pt)

- [ ] make file with correct name (1pt)
- [ ] make a class with the four properties (5pt)

In the first viewController, make an A/B tree structure using Page objects that hold your story (10pt)

- [ ] set page numbers and text for 7 Page objects (7pt)
- [ ] set links between Pages objects to connect (3pt)

Add navigation controller to first view, and connect the views with segue (5pt)

- [ ] adding Nav Controller on to first view (1pt)
- [ ] connect the three views with 2 ‘push’ type segues, and give the segues identifier names (4pt)

Layout the GUI (18pt)

- [ ] add a TextView to each view (3pt)
- [ ] add a Nav Item to the top of the 2nd and 3rd view (2pt)
- [ ] add 2 Bar Button Items to the Nav Bar in the 1st and 2nd view, and 1 to the upper left of the Nav Bar in the 3rd view (5pt)
- [ ] add outlets and actions to the 2 Bar Buttons, and an outlet for the text-view in the 1st viewController (3pt)
- [ ] add outlets and actions to the 2 Bar Buttons, and an outlet for the text-view in the 2nd viewController (3pt)
- [ ] add an action to the Bar Button, and an outlet to the textView in the 3rd viewController (2pt)

Update each view’s GUI in the viewWillAppear function for that view (10pt)

- [ ] display the current pageNumber value in the navItem’s title for each view (3pt)
- [ ] display the pageText in the textView for each view (3pt)
- [ ] display the pageNumber for the pageChoiceA and pageChoiceB in the barButtonItem’s title text (4pt)

Pass the Appropriate Page Object to the Next View(12pt)

- [ ] call the appropriate segue, and pass a ‘sender’ value indicating which button was pressed within the performSegue function in each button action (8pt)
- [ ] check the 'sender' value you pass to check which button was pressed, and pass the correct Page object to the next view within the prepare(for Segue, sender) function in the 1st and 2nd view (4pt)

Restart Button (1pt)

- [ ] The button action within the 3rd view must call the popToRootViewController function to return to the first view (1pt)

Customize your application (34pt)

- [ ] application runs without errors (3pt)
- [ ] code is well commented with clear details (15pt)
- [ ] add constraints to all UI elements (6pt)
- [ ] custom content added to project (10pt)

Total: 100pt

