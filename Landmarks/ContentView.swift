//
//  ContentView.swift
//  Landmarks
//
//  Created by Chhuon on 25/3/20.
//  Copyright © 2020 imergency. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack {
                Text("Turtle Rock!").font(.title).foregroundColor(.green)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California Test")
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
