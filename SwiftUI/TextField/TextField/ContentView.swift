//
//  ContentView.swift
//  TextField
//
//  Created by Jonathan Ramirez on 07.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var title: String = "Title"

    var body: some View {
        VStack {
            Text(title)
            TextField("Enter your text", text: $title)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
