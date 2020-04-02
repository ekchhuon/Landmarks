//
//  UserData.swift
//  Landmarks
//
//  Created by Chhuon on 30/3/20.
//  Copyright © 2020 imergency. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}

