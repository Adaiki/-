//
//  ContentView.swift
//  UtilityCostCalculator
//
//  Created by 赤荻大輝 on 2023/02/16.
//

import SwiftUI

struct ContentView: View {
    @State var utillity1 = 0
    @State var utillity2 = 0
    @State var utillity3 = 0
    @State var num = [1, 2, 3]
    @ObservedObject var utillityCostCalc1 = Calc1()
    @ObservedObject var utillityCostCalc2 = Calc2()
    @ObservedObject var utillityCostCalc3 = Calc3()
    
    var body: some View {
        VStack(spacing: 20 ){
            Image(systemName: "yensign.circle")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundColor(.yellow)
            Text("光熱費計算ツール")
                .font(.largeTitle)
            VStack(alignment: .leading, spacing: 70){
                HStack{
                    Picker(selection: $utillity1, label: Text("光熱費①"))
                    {
                        Text(" 電気").tag(0)
                        Text("ガス").tag(1)
                        Text("水道").tag(2)
                        Text("暖房").tag(3)
                        Text("クーラー").tag(4)
                        Text("シャワー").tag(5)
                        Text("電子レンジ").tag(6)
                        Text("テレビ").tag(7)
                        Text("扇風機").tag(8)
                        Text("ドライヤー").tag(9)
                    }.buttonStyle(.bordered)
                    HStack{
                        VStack(alignment: .leading, spacing: 10){
                            Button("スタート"){ utillityCostCalc1.start()}
                                .buttonStyle(.bordered)
                                .font(.title3)
                            Button("ストップ") {utillityCostCalc1.stop()}
                                .buttonStyle(.bordered)
                                .font(.title3)
                        }
                        VStack(alignment: .leading, spacing: 20){
                            let seconds = Int(utillityCostCalc1.elapsedTime)
                            let milliSeconds = Int((utillityCostCalc1.elapsedTime) * 100) % 100
                            Text("時間：\(seconds).\(milliSeconds)秒")
                                .font(.title2)
                            Text("金額：\(Price1(utillity1))円")
                                .font(.title2)
                        }
                    }
                }
                
                HStack{
                    Picker(selection: $utillity2, label: Text("光熱費②"))
                    {
                        Text(" 電気").tag(0)
                        Text("ガス").tag(1)
                        Text("水道").tag(2)
                        Text("暖房").tag(3)
                        Text("クーラー").tag(4)
                        Text("シャワー").tag(5)
                        Text("電子レンジ").tag(6)
                        Text("テレビ").tag(7)
                        Text("扇風機").tag(8)
                        Text("ドライヤー").tag(9)
                    }.buttonStyle(.bordered)
                    HStack{
                        VStack(alignment: .leading, spacing: 10){
                            Button("スタート"){ utillityCostCalc2.start()}
                                .buttonStyle(.bordered)
                                .font(.title3)
                            Button("ストップ") {utillityCostCalc2.stop()}
                                .buttonStyle(.bordered)
                                .font(.title3)
                        }
                        VStack(alignment: .leading, spacing: 20){
                            let seconds = Int(utillityCostCalc2.elapsedTime)
                            let milliSeconds = Int((utillityCostCalc2.elapsedTime) * 100) % 100
                            Text("時間： \(seconds).\(milliSeconds)秒")
                                .font(.title2)
                            Text("金額：\(Price2(utillity2))円")
                                .font(.title2)
                        }
                    }
                }
                HStack{
                    Picker(selection: $utillity3, label: Text("光熱費③"))
                    {
                        Text(" 電気").tag(0)
                        Text("ガス").tag(1)
                        Text("水道").tag(2)
                        Text("暖房").tag(3)
                        Text("クーラー").tag(4)
                        Text("シャワー").tag(5)
                        Text("電子レンジ").tag(6)
                        Text("テレビ").tag(7)
                        Text("扇風機").tag(8)
                        Text("ドライヤー").tag(9)
                    }.buttonStyle(.bordered)
                    HStack{
                        VStack(alignment: .leading, spacing: 10){
                            Button("スタート"){ utillityCostCalc3.start()}
                                .buttonStyle(.bordered)
                                .font(.title3)
                            Button("ストップ") {utillityCostCalc3.stop()}
                                .buttonStyle(.bordered)
                                .font(.title3)
                        }
                        VStack(alignment: .leading, spacing: 20){
                            let seconds = Int(utillityCostCalc3.elapsedTime)
                            let milliSeconds = Int((utillityCostCalc3.elapsedTime) * 100) % 100
                            Text("時間： \(seconds).\(milliSeconds)秒")
                                .font(.title2)
                            Text("金額：\(Price3(utillity3))円")
                                .font(.title2)
                        }
                    }
                }
            }

        }
    }
    
    func Price1(_ num:Int) -> Int {
        let result = Int(utillityCostCalc1.secondsPrice[num] * utillityCostCalc1.elapsedTime)
        return result
    }
    
    func Price2(_ num:Int) -> Int {
        let result = Int(utillityCostCalc2.secondsPrice[num] * utillityCostCalc2.elapsedTime)
        return result
    }
    
    func Price3(_ num:Int) -> Int {
        let result = Int(utillityCostCalc3.secondsPrice[num] * utillityCostCalc3.elapsedTime)
        return result
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
