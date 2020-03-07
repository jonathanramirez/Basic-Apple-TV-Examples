//
//  ContentView.swift
//  Buttons
//
//  Created by Jonathan Ramirez on 07.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Button(action: {}) {
                Text("Button")
            }
            
            
           Button(action: {
                            
            }, label: {
                Image(systemName: "circle")
                Text("Title")
                Text("Subtitle")
            })
            .foregroundColor(Color.white)
            .padding()
            .background(Color.blue)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
