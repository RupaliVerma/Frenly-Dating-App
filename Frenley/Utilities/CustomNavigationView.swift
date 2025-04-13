//
//  CustomNavigationView.swift
//  Frenley
//
//  Created by RUPALI VERMA on 11/07/24.
//

import SwiftUI

struct CustomNavigationView: View {
    var body: some View {
        ZStack{
//            Color.accentColor.opacity(0.18)
//                .frame(height: 75)
            HStack{
                Button(action: {
                    // Back Action
                }, label: {
                    Image(systemName: iconBackButton)
                        .font(.system(size: 25, weight: .light))
                        .frame(width: 22, height: 22, alignment: .center)
                        .foregroundColor(.accentColor)
                        .padding(.vertical,12)
                        .padding(.horizontal,12)
                        .background(.white)
                        .cornerRadius(10)
                        .padding()
                       
                })
                Spacer()
                        Text("Frenley")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 25, weight: .semibold))
                    .fontDesign(.rounded)
                    .padding()
                Spacer()
                Button(action: {
                    // Like Action
                }, label: {
                    Image(systemName: "sparkles")
                        .font(.system(size: 25, weight: .light))
                        .frame(width: 22, height: 22, alignment: .center)
                        .foregroundColor(.accentColor)
                        .padding(.vertical,12)
                        .padding(.horizontal,12)
                        .background(.white)
                        .cornerRadius(10)
                        .padding()
                        
                })
            }
        }
       
        .frame(alignment: .topLeading)
        //camera is hiding the Title
        .offset(y: 25)
    }
}

#Preview {
    CustomNavigationView()
}
