//
//  HomeScreenViewModel.swift
//  Frenley
//
//  Created by RUPALI VERMA on 15/07/24.
//

import Foundation



@MainActor class HomeScreenViewModel: ObservableObject {
    @Published var userDetail = [UserDetail]()
    
    func fetchData(urlString:String) async {
        
        guard let downloadedData: [UserDetail] = await NetworkManager.downloadData(fromURL: urlString) else {
            return
        }
        userDetail = downloadedData
    }
}
