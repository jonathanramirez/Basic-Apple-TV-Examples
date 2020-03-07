//
//  ContentView.swift
//  List
//
//  Created by Jonathan Ramirez on 07.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import SwiftUI


extension Color {
    private static let all: [Color] = [.red, .green, .blue, .orange, .yellow, .pink, .purple]
    static var random: Color {
        all.randomElement()!
    }
}


struct ContentView: View {
    let items: [String] = (0...50).map { String($0) }
    var body: some View {
        List() {
            ForEach(self.items, id: \.self) { row in
                    Button(action: { }, label: {
                           Image(systemName: "circle")
                           Text(row)
                           Text("Subtitle")
                       })
                       .foregroundColor(Color.white)
                       .background(Color.random)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
