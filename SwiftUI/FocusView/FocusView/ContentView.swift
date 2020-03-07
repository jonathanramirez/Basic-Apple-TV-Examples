//
//  ContentView.swift
//  FocusView
//
//  Created by Jonathan Ramirez on 07.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selected = false

    var body: some View {
        VStack {
            Text("Hello, World!")
                .focusable(true) { isFocused in
                    self.selected = isFocused
                }.background(self.selected ? Color.green : Color.clear)
                .frame(width:self.selected ? 200 : 100)
            
            Button(action: {}) {
                Text("Button")
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
