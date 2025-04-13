//
//  TabBarView.swift
//  Frenley
//
//  Created by RUPALI VERMA on 11/07/24.
//

import SwiftUI

struct TabBarView: View {
    @State var selectedIndex = 0
    @StateObject var vm = HomeScreenViewModel()
    
    // Mark: TabBar Images and and Names
    
    let tabBarImageNames = ["house.fill", "heart.fill", "ellipsis.bubble", "person.circle"]
    let tabBarNames = ["Home", "Likes", "Chats", "Profile"]
    
    var body: some View {
        
        VStack(spacing: 0) {
            ZStack {
                Spacer()
                // Mark: Switch for Selected Index
                switch selectedIndex {
                case 0:
                    HomeScreenView()
                case 3:
                    SingleScreenView()
                    
                default:
                    NavigationView {
                        Text("Default tab")
                    }
                }
            }
            
            Divider()
                .padding(.bottom, 8)
            
            //Mark: Custom TabView Controller
            HStack {
                ForEach(0..<4) { num in
                    Button(action: {
                        selectedIndex = num
                    }, label: {
                        Spacer()
                        Image(systemName: tabBarImageNames[num])
                            .foregroundColor(selectedIndex == num ? Color(Color.accentColor) : .init(white: 0.8))
                        
                        if selectedIndex==num{
                            Text(tabBarNames[num])
                                .font(.custom(BoldFont, size: 15))
                                .foregroundColor(selectedIndex == num ? Color(Color.accentColor) : .init(white: 0.8))
                        }else{   Text("") }
                        Spacer()
                        
                    })
                    
                }
            }
            .frame(maxWidth: .infinity,maxHeight: 15, alignment: .center)
            
        }
        
        .onAppear {
            if vm.userDetail.isEmpty {
                Task {
                    await vm.fetchData(urlString:API_Profile)
                }
            }
        }
    }
    
//     init() {
//     for familyName in UIFont.familyNames{
//     print(familyName)
//     
//     for familyNam in UIFont.fontNames(forFamilyName: familyName){
//     print(" -- \(familyNam)")
//     }
//     }
//     }
     
     
}

#Preview {
    TabBarView()
}

