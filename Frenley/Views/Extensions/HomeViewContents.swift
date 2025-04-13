//
//  HomeViewContents.swift
//  Frenley
//
//  Created by RUPALI VERMA on 14/07/24.
//

import SwiftUI

struct HomeViewContents: View {
    var body: some View {
        VStack{
            Text("About Me")
            
            
        }
       
        }
}

#Preview {
    HomeViewContents()
}

struct HomeMainScreenContent:View {
    var body: some View {
        VStack(){
            PictureView(isMainPicture: true, picture: "Profile")
                .cornerRadius(15)
                .background(Color.accentColor.opacity(0.18))
                .overlay(alignment: .bottomLeading) {
                    HStack{
                        Text(nameAge)
                            .font(.custom(BoldFont, size: 21))
                            .fontDesign(.rounded)
                            .foregroundStyle(.white)
                            .padding()
                        Image(systemName: iconCheckMark)
                            .font(.custom(SemiBoldFont, size: 24))
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40, alignment: .center)
                            .background(.blue)
                            .cornerRadius(20)
                            .padding()
                }
            }
        }
        
    }
}

struct AboutUserContentView:View{
    
    let topicString:String
    let topicDetails:String
    let otherFact: Bool
    var body: some View {
      
//            // couldnt find exact font
//                 Text(" \" ")
//                .font(.title)
//
            VStack(alignment: .leading){
                InfoTitle(infoTitle:topicString, otherFact: otherFact)
              AboutInDescription(topicDetails: topicDetails)
            }
        }
       
        
       
        
}
struct UserBasicInfoView:View{
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            InfoTitle(infoTitle: basicInfoTitle, otherFact: false)
            VStack(alignment: .leading){
            // Array will be used after API Call
                UserBasicInfoSubView(viewIconName: iconForHeight, viewInfo: height)
                UserBasicInfoSubView(viewIconName: iconForGraduation, viewInfo:graduation )
                UserBasicInfoSubView(viewIconName: iconForWork, viewInfo:work )
            }
        }
    }
}

struct UserLocationView:View{
    var body: some View {
       
        VStack(alignment: .leading){
            InfoTitle(infoTitle: basicInfoTitle, otherFact: false)
            UserBasicInfoSubView(viewIconName: iconForLocation, viewInfo: location)
        }
    }
}


struct UserIntrestView:View{
    
    var body: some View{
        VStack(alignment: .leading){
            InfoTitle(infoTitle: myIntrestTitle, otherFact: false)
            UserFavoritesGridview()
        }
    }
}




struct UserFavoritesGridview:View{
       // used for demo
    private let tagdetails:[TagDetails] = [ TagDetails(tagName: "American Football", tagImage: "football.fill"),
                                   TagDetails(tagName: "Athletics", tagImage: "figure.run"),
                                   TagDetails(tagName: "Badminton", tagImage:"figure.badminton" ),
                                   TagDetails(tagName: "BasketBall", tagImage: "football.fill"),
                                   TagDetails(tagName: "Baseball", tagImage: "baseball.fill")  ]
           
           var body: some View {

               CapsuleLayOut {
                       ForEach(tagdetails, id: \.self) { tag in
                           HStack(content: {
                               Image(systemName:tag.tagImage)
                                   .foregroundColor(.black)
                               Text(tag.tagName)
                                   .font(.custom(SemiBoldFont, size: 15))
                                   .foregroundColor(.accentColor)
                                   .fontDesign(.rounded)
                           })
                           .padding()
                                   .background(
                                    Capsule()
                                        .fill( Color.accentColor.opacity(0.18))
                                       .stroke(
                                        Color.accentColor.opacity(0.18)
                                        )
                                   )
                                   .padding(5)
                    }
               }
           }
       }

struct ExtraButtonsView:View{
    var body:some View{
        VStack{
            HStack{
                ButtonView(isUpperBtn: true, setBackgroudColor: .gray, setBtnIcon: iconCross)
                Spacer()
                ButtonView(isUpperBtn: true, setBackgroudColor: .yellow, setBtnIcon: iconHeart)
            }
            HStack{
                Spacer()
                ButtonView(isUpperBtn: false, setBackgroudColor: .pink, setBtnIcon: iconPerson)
                ButtonView(isUpperBtn: false, setBackgroudColor: .accentColor, setBtnIcon: iconStar)
                Spacer()
            }
            
        }
        
    }
    
}






// LayOut for Capsule
struct CapsuleLayOut: Layout {
           
           func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
               let sizes = subviews.map { $0.sizeThatFits(.unspecified) }

               var totalHeight: CGFloat = 0
               var totalWidth: CGFloat = 0

               var lineWidth: CGFloat = 0
               var lineHeight: CGFloat = 0

               for size in sizes {
                   if lineWidth + size.width > proposal.width ?? 0 {
                       totalHeight += lineHeight
                       lineWidth = size.width
                       lineHeight = size.height
                   } else {
                       lineWidth += size.width
                       lineHeight = max(lineHeight, size.height)
                   }

                   totalWidth = max(totalWidth, lineWidth)
               }

               totalHeight += lineHeight

               return .init(width: totalWidth, height: totalHeight)
           }

           func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
               let sizes = subviews.map { $0.sizeThatFits(.unspecified) }

               var lineX = bounds.minX
               var lineY = bounds.minY
               var lineHeight: CGFloat = 0

               for index in subviews.indices {
                   if lineX + sizes[index].width > (proposal.width ?? 0) {
                       lineY += lineHeight
                       lineHeight = 0
                       lineX = bounds.minX
                   }

                   subviews[index].place(
                       at: .init(
                           x: lineX + sizes[index].width / 2,
                           y: lineY + sizes[index].height / 3
                       ),
                       anchor: .center,
                       proposal: ProposedViewSize(sizes[index])
                   )

                   lineHeight = max(lineHeight, sizes[index].height)
                   lineX += sizes[index].width
               }
           }
}

