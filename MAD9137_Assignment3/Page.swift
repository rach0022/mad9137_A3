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
    var pageNumber: Int {
        willSet {
            guard newValue >= 0 else {
                print("Page number must not be negative")
                return
            }
            self.pageNumber = newValue
        }
    }
    
    // pageText will hold the text for the page
    var pageText: String?
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
    // pageChoiceA and pageChoiceB will be used to reference the 2 possible paths
    // for the user
    var pageChoiceA: Page?
    
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
    var pageChoiceB: Page?
    // Custom properties for the Page class
    // pageColour will be used to determine the background colour of the viewController
    var pageColour: UIColor?
    var pageBannerText: String? //will be used to display a possible scrolling banner 
    
    
    // the default init will only need the page number and pageText
    init(_pageNumber: Int, _pageText: String) {
        self.pageNumber = _pageNumber
        self.pageText = _pageText
    }
    
    convenience init(_pageNumber: Int, _pageText: String, _pageChoiceA: Page, _pageChoiceB: Page) {
        self.init(_pageNumber: _pageNumber, _pageText: _pageText)
        self.pageChoiceA = _pageChoiceA
        self.pageChoiceB = _pageChoiceB
    }
}
