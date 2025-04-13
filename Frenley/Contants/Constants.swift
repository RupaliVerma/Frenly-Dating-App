//
//  Constants.swift
//  Frenley
//
//  Created by RUPALI VERMA on 16/07/24.
//

import Foundation
import UIKit


//Font
let BoldFont = "Nunito-Bold"
let SemiBoldFont = "Nunito-SemiBold"
let RegularFont = "Nunito-Regular"

//Screen Size

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

// API Links
let API_Profile = "http://api.frenley.com/v2/profiles/testUser"


// Contant Titles
let basicInfoTitle = "My Basic Info"
let aboutMeTitle = "About Me"
let extraInfoTitle = "Facts about me that surprise people"
let myIntrestTitle = "My Intrests"
let locationTitle = "Location"

let iconCheckMark = "checkmark.shield"
let iconForHeight = "arrow.down.backward.and.arrow.up.forward.square.fill"
let iconForGraduation = "graduationcap.fill"
let iconForWork = "building.fill"
let iconForLocation = "location.fill"
let iconCross = "xmark"
let iconHeart = "heart.fill"
let iconPerson = "person.crop.circle.badge.exclamationmark.fill"
let iconStar = "star.fill"
let iconBackButton = "arrow.uturn.left"
let imgApostraph = "quotation"


/// Used for Demo
let nameAge = "Rupali, 25"
let height = "5.6 ft tall"
let graduation = "Undergraduate"
let work = "SDE 2 at Google"
let AboutMeInfo  = "I never stop improving myself and appreciate this quality in people!"
let extraInfoDetails = "I never stop improving myself and appreciate this quality in people! I never stop improving myself and appreciate this quality in people!"
let location = "Jaipur"


// Example of tags
struct TagDetails:Hashable{
    let tagName:String
    let tagImage:String
}
