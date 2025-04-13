//
//  UserDetails.swift
//  Frenley
//
//  Created by RUPALI VERMA on 15/07/24.
//

import Foundation

struct PhotoList:Codable{
    let imageUrl: String
    let positionInPics:Int
    let profilePic:String
}
struct UsersQuestionsList:Codable{
    let answer:String
    let question:String
}
struct UsersInterestList:Codable{
     let interestTitle:String
    let iconUrl: String
}

struct UserDetail: Identifiable, Codable {
    let userId: Int
    let id: Int
    let firstName:String
    let lastName:String
    let dateOfBirth:String
    let distanceInMiles:String?
    let country:String?
    let city:String?
    let aboutMe:String?
    let verified:Bool
    let photoList: [PhotoList]?
    let usersQuestionsList:[UsersQuestionsList]?
    let usersInterestList: [UsersInterestList]?
}

enum NetworkError: Error {
    case badUrl
    case invalidRequest
    case badResponse
    case badStatus
    case failedToDecodeResponse
}

struct UserDetails:Identifiable,Codable{
    let id:Int
}

//{
//    "id": 1000000,
//  "firstName": "Mrunal",
//    "lastName": "Thakur",
//    "dateOfBirth": "1984-04-09T05:30:00.000Z",
//    "distanceInMiles": 80.93,
//    "country": "IND",
//    "city": "Mumbai",
//    "aboutMe": "Hi Mrunal here. I am an adventurous soul, passionate about food, travel, and good books. I love exploring new places and stories. Let's chat if you enjoy great conversations and a shared laugh.",
//    "photoList": [ { "imageUrl": "https://frenley-test-v7.s3.amazonaws.com/User-200/images/0", "positionInPics": 0, "profilePic": true }, { "imageUrl": "https://frenley-test-v7.s3.amazonaws.com/User-200/images/1", "positionInPics": 1, "profilePic": false }, { "imageUrl": "https://frenley-test-v7.s3.amazonaws.com/User-200/images/2", "positionInPics": 2, "profilePic": false }, { "imageUrl": "https://frenley-test-v7.s3.amazonaws.com/User-200/images/3", "positionInPics": 3, "profilePic": false }, { "imageUrl": "https://frenley-test-v7.s3.amazonaws.com/User-200/images/4", "positionInPics": 4, "profilePic": false }, { "imageUrl": "https://frenley-test-v7.s3.amazonaws.com/User-200/images/5", "positionInPics": 5, "profilePic": false } ],
//    "usersQuestionsList": [ { "answer": "Bevkoof and Cute", "question": "How would my friends define me.", }, { "answer": "Anything is fine.", "question": "Mountains or Beaches", } ],
//    "usersInterestList": [ { "interestTitle": "Workout", "iconUrl": "https://facelogue-qa.s3.us-east-2.amazonaws.com/config/init/interest/workout.png", }, { "interestTitle": "Singing", "iconUrl": "https://facelogue-qa.s3.us-east-2.amazonaws.com/config/init/interest/singing.png", }, { "interestTitle": "Gardening", "iconUrl": "https://facelogue-qa.s3.us-east-2.amazonaws.com/config/init/interest/drugs.png", } ],
//    "verified": false,
//}
