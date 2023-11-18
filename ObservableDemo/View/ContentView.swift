//
//  ContentView.swift
//  ObservableDemo
//
//  Created by kwp-imac on 11/10/23.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var timerData : TimerData = TimerData()

    var body: some View {

        // Navigation View
        NavigationView {
            // VStack
            VStack {
                Text("Timer count = \(timerData.timerCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action : resetCount) {
                    Text("Reset Counter")
                }
            }
        }
    }

    func resetCount() {
        timerData.resetCount()
    }
}

#Preview {
    ContentView()
}
