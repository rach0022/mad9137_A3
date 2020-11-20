//
//  Page.swift
//  MAD9137_Assignment3
//
//  Created by Ravi Rachamalla on 2020-11-16.
//

import Foundation
import UIKit

class Page {
    // properties for the page class
    // all will be nullable for the start until they are intitialized
    // A page number int that will reference this objects page number
//    var _pageNumber: Int?
    var pageNumber: Int?
    
    // pageText will hold the text for the page
    var pageText: String?

    // pageChoiceA and pageChoiceB will be used to reference the 2 possible paths
    // for the user
    var pageChoiceA: Page?
    var pageChoiceB: Page?
    
    // Custom properties for the Page class
    // pageColour will be used to determine the background colour of the viewController
    var pageColour: UIColor?
    var pageBannerText: String? //will be used to display a possible scrolling banner
    var _pageBannerText: String? {
        get {
            return self.pageBannerText
        }
        set {
            self.pageBannerText = newValue
        }
    }
    
    // the default init will only need the page number and pageText
    init(_pageNumber: Int, _pageText: String) {
        self.pageNumber = _pageNumber
        self.pageText = _pageText
    }
    
    // convenience init that sets the page choices and base init, currently not used
    convenience init(_pageNumber: Int, _pageText: String, _pageChoiceA: Page, _pageChoiceB: Page) {
        self.init(_pageNumber: _pageNumber, _pageText: _pageText)
        self.pageChoiceA = _pageChoiceA
        self.pageChoiceB = _pageChoiceB
    }
    
    // convenience init that sets the themeString along with the base init, currently not used
    convenience init(_pageNumber: Int, _pageText: String, _themeString: String) {
        self.init(_pageNumber: _pageNumber, _pageText: _pageText)
        setTheme(themeString: _themeString)
    }
    
    // method to show and hide a text label with the banner text set in the page also change
    // the background colour
    func showUITheme(textLabel: UILabel, view: UIView) {
        if let bannerText = self._pageBannerText {
            textLabel.text =  bannerText
            textLabel.isHidden = false
            
            // make sure to show the page colour if it is set
            if let colour = self.pageColour {
                view.backgroundColor = colour
            }
        }
    }
    
    // method to set the theme of the page
    // a theme matching to Day, Afternoon, Night
    // will set the UIColor to the corresponding values
    // and will display the string in the banner text
    // parameter is a string "DAY-12:00" will be split on the hyphen
    // and will set the colour to DAY and display 12:00 in the
    // banner text
    func setTheme(themeString: String){
        // we will use the componenets function to separate on the hyphen and split
        // the string into an array
        let themeArray = themeString.components(separatedBy: "-")
        // using a switch statement we will set the
        // pageColour using the string
        switch(themeArray[0].uppercased()){
        case "DAY":
            self.pageColour = UIColor.systemBlue
            break
        case "AFTERNOON":
            self.pageColour = UIColor.systemOrange
            break
        case "NIGHT":
            self.pageColour = UIColor.systemPurple
            break
        case "ALIEN":
            self.pageColour = UIColor.systemGreen
        default:
            break
        }
        
        // now with the switch statement finished we can
        // set the pageBannerText to the 2 item in the array
        self._pageBannerText = themeArray[1]
    }
}


// *** UNCOMMENTED CODE: *****
//    {
//        get {
//            if let text = self.pageText{
//                return text
//            }
//            return ""
//        }
//        set {
//            guard newValue == "" else {
//                print("String text must not be empty")
//                return
//            }
//            self.pageText = newValue
//        }
//    }
//    var pageA: Page
//    {
//        get {
//            // check to see if the pageChoiceA exists first then return it
//            if let page = self.pageChoiceA {
//                return page
//            } else {
//                return nil
//            }
//        }
//        set {
//            self.pageChoiceA = newValue
//        }
//    }
//    {
//        get {
//            return _pageNumber
//        }
//        set {
//            guard newValue! >= 0 else {
//                print("Page number must not be negative")
//                return
//            }
//            self._pageNumber = newValue
//        }
//    }
