//
//  ReusableViews.swift
//  Frenley
//
//  Created by RUPALI VERMA on 16/07/24.
//

import SwiftUI

struct ReusableViews: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct InfoTitle:View {
    let infoTitle:String
    let otherFact: Bool
    var body: some View {
        if otherFact == true{
            ZStack{
                HStack(){
                    Spacer()
                    Image(imgApostraph)
                        .resizable()
                        .frame(width: UIScreen.screenWidth*0.25, height: UIScreen.screenWidth*0.30, alignment: .topTrailing)
                        .background(.clear)
                        .opacity(0.2)
                }
                InfoTitleSubView(infoTitle: infoTitle)
            }
        }else{
            InfoTitleSubView(infoTitle: infoTitle)
        }
        
    }
}

struct InfoTitleSubView: View {
    let infoTitle:String
    var body: some View {
        HStack{
            Text(infoTitle)
                .font(.custom(SemiBoldFont, size: 19))
                .fontDesign(.rounded)
                .foregroundStyle(.black)
                .frame(alignment: .leading)
                .padding()
        }

    }
}


struct AboutInDescription:View {
    let topicDetails:String
    var body: some View {
        Text(topicDetails)
            .font(.custom(RegularFont, size: 15))
            .fontDesign(.rounded)
            .foregroundStyle(.gray)
            .padding(.horizontal,15)
            .padding(.bottom,20)
        Text("")
    }
}

struct UserBasicInfoSubView:View{
    
    var viewIconName:String
    var viewInfo:String
    
    var body: some View {
        
             HStack{
                       Image(systemName: viewIconName)
                           .foregroundColor(.black)
                           .cornerRadius(10)
                           .padding()
                           .frame(width: 20, height: 20, alignment: .leading)
                           .padding()
                       Text(viewInfo)
                     .font(.custom(RegularFont, size: 15))
                           .fontDesign(.rounded)
                           .foregroundStyle(.black)
                            Spacer()
                     .frame(alignment: .leading)
                   }
    }
    
}



struct PictureView:View{
    let isMainPicture:Bool
    // imageview is to be put to reuse of view
    let picture :String
    var body: some View{
        
        Image(picture)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.screenWidth*0.9,height: isMainPicture == true ? UIScreen.screenHeight*0.80:UIScreen.screenHeight*0.4, alignment: .top)
            .clipped()
            .cornerRadius(isMainPicture == true ? 15:0)
    }
}


struct ButtonView:View {
    let isUpperBtn:Bool
    let setBackgroudColor:Color
    let setBtnIcon:String
     
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: setBtnIcon)
                .font(.custom(BoldFont, size: 20))
                .frame(width: isUpperBtn == true ? 80:60, height: isUpperBtn == true ? 80:60, alignment: .center)
                .foregroundColor(.white)
                .background(setBackgroudColor)
                .cornerRadius(isUpperBtn == true ? 40:30)
                .padding()
                .padding(.trailing,12)
        })
    }
}

#Preview {
    ReusableViews()
}
