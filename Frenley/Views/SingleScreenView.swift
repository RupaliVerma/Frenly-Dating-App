//
//  SingleScreenView.swift
//  Frenley
//
//  Created by RUPALI VERMA on 16/07/24.
//

import SwiftUI

struct SingleScreenView: View {
    var body: some View {
        NavigationView() {
            VStack(spacing: 0){
                CustomNavigationView()
                  
                    HomeMainScreenContent()
                .frame(width: UIScreen.main.bounds.width * 0.9)
                .background(.white)
                .padding()
                .overlay(alignment: .bottomTrailing) {
                    ButtonView(isUpperBtn: false, setBackgroudColor: .orange, setBtnIcon: iconStar)
                        .padding()
                }
            }
            .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
            .background(Color.accentColor.opacity(0.18))
            .offset(y: -20)
           
        }
    }
}

#Preview {
    SingleScreenView()
}
