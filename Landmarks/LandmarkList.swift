//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Chhuon on 28/3/20.
//  Copyright © 2020 imergency. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
//    @State var showFavoritesOnly = false
    @EnvironmentObject var userData: UserData
    var body: some View {
        NavigationView {
            
            List {
                
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorite only")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
                .navigationBarTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
                .environmentObject(UserData())
        }
    }
}
