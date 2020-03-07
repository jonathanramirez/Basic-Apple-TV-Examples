//
//  ContentView.swift
//  PresentController
//
//  Created by Jonathan Ramirez on 07.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import SwiftUI

struct ModalView : View {
    @Binding var activeModal: Bool
    var body : some View {
        VStack {
            Text("Detail")
            Button(action: {
                self.activeModal = false
            }) {
                Text("Hide modal")
            }

        }
    }
}

struct ContentView: View {
    @State var presentModal = false

    var body: some View {
        Button("Present") {
            self.presentModal = true
        }
        .sheet(isPresented: $presentModal) {
            ModalView(activeModal: self.$presentModal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
