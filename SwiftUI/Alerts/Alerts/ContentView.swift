//
//  ContentView.swift
//  Alerts
//
//  Created by Jonathan Ramirez on 06.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let simpleTitle = "Simple Alert"
    let simpleMessage = "Message"
    let buttonTitle = "OK"
    let buttonRetry = "Retry"
    let buttonDestructive = "Delete"

    
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    @State private var showingAlert3 = false

    fileprivate func simpleAlert() -> some View {
        return Button(action: { self.showingAlert1.toggle() }) {
            Text("Alert 1 Simple")
        }.alert(isPresented: self.$showingAlert1) {
            Alert(title: Text(simpleTitle),
                  message: Text(simpleMessage),
                  dismissButton: .default(Text(buttonTitle)))
        }
    }
    
    var body: some View {
        VStack {
            simpleAlert()

            Button(action: { self.showingAlert2.toggle() }) {
                  Text("Alert 2 Custom")
            }.alert(isPresented: self.$showingAlert2) {
                Alert(title: Text(simpleTitle), message: Text(simpleMessage),
                      primaryButton: .default(Text(buttonRetry)),
                      secondaryButton: .cancel())
            }

            Button(action: { self.showingAlert3.toggle() }) {
                  Text("Alert 3 Destructive")
            }.alert(isPresented: self.$showingAlert3) {
                Alert(title: Text(simpleTitle), message: Text(simpleMessage),
                      primaryButton: .default(Text(simpleTitle)),
                      secondaryButton: .destructive(Text(buttonDestructive)))
            }

           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
