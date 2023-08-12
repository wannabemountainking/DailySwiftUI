//
//  MyForm.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/12.
//

import SwiftUI

struct MyForm: View {
    
    @State private var showingAdvancedOptions = false
    @State private var toggling = false
    
    var body: some View {
        
        NavigationView {
            Form {
                Section("Title") {
                    Toggle(isOn: $showingAdvancedOptions) {
                        if showingAdvancedOptions {
                            Text("Show advanced options").fontWeight(.heavy).foregroundColor(.indigo)
                        } else {
                            Text("Show advanced options").fontWeight(.ultraLight).foregroundColor(.gray)
                        }
                    }
                    if showingAdvancedOptions {
                        Toggle(isOn: $toggling) {
                            Text("Advanced options")
                        }
                    }
                }
                Section("Text") {
                    HStack {
                        Image(systemName: "pin")
                        Text("Yoon")
                    }
                }
                Section {
                    Button {
                        print("Saved Completely!")
                    } label: {
                        Text("Save Changes")
                    }
                    .disabled(!toggling)
                } footer: {
                    Text("footer")
                }
                .navigationTitle(Text("Settings"))
            }
        }
    }
}

struct MyForm_Previews: PreviewProvider {
    static var previews: some View {
        MyForm()
    }
}
