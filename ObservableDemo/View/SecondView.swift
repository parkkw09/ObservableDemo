//
//  SecondView.swift
//  ObservableDemo
//
//  Created by kwp-imac on 11/18/23.
//

import Foundation
import SwiftUI

struct SecondView: View {

    @ObservedObject var timerData: TimerData

    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Counter = \(timerData.timerCount)")
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    SecondView(timerData: TimerData())
}
