//
//  MyStepper.swift
//  DailySwiftUI
//
//  Created by YoonieMac on 2023/08/07.
//

import SwiftUI


struct MyStepper: View {
    
    @State private var myLevel: Int = 0
    let colors: [Color] = [.orange, .black, .blue, .brown, .cyan, .green, .indigo, .mint, .pink, .purple, .red, .teal, .yellow, .white]
    @State private var myColor: Color = .orange
    
    func incrementStep() {
        myLevel += 1
        if myLevel >= colors.count {
            myLevel = 0
        }
    }
    
    func decrementStep() {
        myLevel -= 1
        if myLevel < 0 {
            myLevel = colors.count - 1
        }
    }
    
    var body: some View {
        VStack {
            Stepper{
                Text("Your Level: \(myLevel)    Color: \(myColor.description)")
            } onIncrement: {
                myColor = colors[Int.random(in: 0...colors.count - 1)]
                incrementStep()
            } onDecrement: {
                myColor = colors[Int.random(in: 0...colors.count - 1)]
                decrementStep()
            }
            .foregroundColor(myColor)
            .padding(20)
            .colorMultiply(myColor)
            
            Image(systemName: "bolt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .foregroundColor(myColor)
        }
        
        

    }
}

struct MyStepper_Previews: PreviewProvider {
    static var previews: some View {
        MyStepper()
    }
}
