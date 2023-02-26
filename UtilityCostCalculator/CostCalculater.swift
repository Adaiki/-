//
//  CostCalculater.swift
//  UtilityCostCalculator
//
//  Created by 赤荻大輝 on 2023/02/16.
//

import Foundation

class Calc1: ObservableObject {
    @Published var elapsedTime: Double = 0.0
    private var timer = Timer()
    @Published var secondsPrice: [Double] =
    [0.00056, 0.011, 0.05, 0.0128, 0.0083, 0.09, 0.0075, 0.0024, 0.00015, 0.09]
    //電気　0.00056円/s
    //ガス　0.011円/s
    //水道　0.05円/s
    //暖房　0.0128円/s
    //クーラー　0.0083/s
    //シャワー　0.09円/s
    //電子レンジ　0.0075円/s
    //テレビ　0.0024円/s
    //扇風機　0.00015円/s
    //ドライヤー　0.09円/s
    
    
    func start() {
        guard !timer.isValid else { return }
        self.elapsedTime = 0.0
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
            self.elapsedTime += 0.01
        }
    }
    func stop() {
        timer.invalidate()
    }
}

class Calc2: ObservableObject {
    @Published var elapsedTime: Double = 0.0
    private var timer = Timer()
    @Published var secondsPrice: [Double] =
    [0.075, 0.011, 0.05, 0.0128, 0.083, 0.09, 0.0075, 0.0024, 0.00015, 0.09]
    //電気　0.0075円/s
    //ガス　0.011円/s
    //水道　0.05円/s
    //暖房　0.0128円/s
    //クーラー　0.083/s
    //シャワー　0.09円/s
    //電子レンジ　0.0075円/s
    //テレビ　0.0024円/s
    //扇風機　0.00015円/s
    //ドライヤー　0.09円/s
    
    
    func start() {
        guard !timer.isValid else { return }
        self.elapsedTime = 0.0
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
            self.elapsedTime += 0.01
        }
    }
    func stop() {
        timer.invalidate()
    }
}

class Calc3: ObservableObject {
    @Published var elapsedTime: Double = 0.0
    private var timer = Timer()
    @Published var secondsPrice: [Double] =
    [0.075, 0.011, 0.05, 0.0128, 0.083, 0.09, 0.0075, 0.0024, 0.00015, 0.09]
    //電気　0.0075円/s
    //ガス　0.011円/s
    //水道　0.05円/s
    //暖房　0.0128円/s
    //クーラー　0.083/s
    //シャワー　0.09円/s
    //電子レンジ　0.0075円/s
    //テレビ　0.0024円/s
    //扇風機　0.00015円/s
    //ドライヤー　0.09円/s
    
    
    func start() {
        guard !timer.isValid else { return }
        self.elapsedTime = 0.0
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
            self.elapsedTime += 0.01
        }
    }
    func stop() {
        timer.invalidate()
    }
}
