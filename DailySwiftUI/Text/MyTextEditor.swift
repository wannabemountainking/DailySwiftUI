//
//  MyTextEditor.swift
//  DailySwiftUI
//
//  Created by YoonieMac on 2023/08/07.
//

import SwiftUI

struct MyTextEditor: View {
    
    @State private var inputText: String = "default"
    @State private var wordsLimit: Float = 30
    @State private var numberOfWords: Int = 10
    
    var body: some View {
        VStack {
            Slider(value: $wordsLimit, in: 10...200) {
                Text("Words Limitation")
            } minimumValueLabel: {
                Text("10")
            } maximumValueLabel: {
                Text("200")
            }
            .padding()
            Text("Words limitation:  \(String(Int(wordsLimit)))")

            TextEditor(text: $inputText)
                .padding()
                .background(.green)
                .frame(height: 300)
                .multilineTextAlignment(.center)
                .onChange(of: inputText) { newValue in
                    numberOfWords = inputText.count
                    if inputText.count > Int(wordsLimit) {
                        inputText.remove(at: inputText.index(before: inputText.endIndex))
                }
            }
            .padding()
            
            Text("Current number of Words:  \(numberOfWords)")
        }
    }
}

struct MyTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        MyTextEditor()
    }
}
