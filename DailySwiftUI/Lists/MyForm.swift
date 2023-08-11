//
//  MyForm.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/12.
//

import SwiftUI

struct MyForm: View {
    
    var people: [Person] = [Person(name: "Yoon", imageName: "heart"), Person(name: "Jin", imageName: "sun.max"), Person(name: "Ian", imageName: "moon")]
    
    var body: some View {
        Form {
            <#code#>
        }
    }
}

struct MyForm_Previews: PreviewProvider {
    static var previews: some View {
        MyForm()
    }
}
