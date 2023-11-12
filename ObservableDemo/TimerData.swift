//
//  TimerData.swift
//  ObservableDemo
//
//  Created by kwp-imac on 11/10/23.
//

import Foundation
import Combine

class TimerData : ObservableObject {

    @Published var timerCount = 0
    var timer: Timer?

    init() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerDidFire), userInfo: nil, repeats: true)
    }

    @objc func timerDidFire() {
        timerCount += 1
    }

    func resetCount() {
        timerCount = 0
    }
}
