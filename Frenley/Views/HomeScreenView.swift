//
//  HomeScreenView.swift
//  Frenley
//
//  Created by RUPALI VERMA on 11/07/24.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        
        NavigationView() {
            VStack(spacing: 0){
                CustomNavigationView()
                ScrollView(showsIndicators: false){
                    // Main Contant
                    HomeMainScreenContent()
                       
                    //AboutUser view
                    AboutUserContentView(topicString: aboutMeTitle, topicDetails:AboutMeInfo, otherFact: false )
                    // Basic Info
                    UserBasicInfoView()
                    //Intrest View
                    UserIntrestView()
                    //  Other View
                    AboutUserContentView(topicString:extraInfoTitle , topicDetails: extraInfoDetails, otherFact: true)
                    // Saveral Picture
                   PictureView(isMainPicture: false, picture: "Photo")
                    //Other Info
                    AboutUserContentView(topicString: extraInfoTitle, topicDetails: extraInfoDetails, otherFact: true)
                    // Other Info
                    PictureView(isMainPicture: false, picture: "girl")
                    // Location info
                    UserLocationView()
                    // Extra Buttons
                    ExtraButtonsView()
                }
                .frame(width: UIScreen.main.bounds.width * 0.9)
                .background(.white)
                .padding()
            }
            .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
            .background(Color.accentColor.opacity(0.18))
        }
    }
}

#Preview {
    HomeScreenView()
}


