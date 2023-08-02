//
//  MyList.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/02.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let imageName: String
}

struct MyListView: View {
    var body: some View {
        
        let people: [Person] = [
            Person(name: "Yoonie", imageName: "alarm.fill"),
            Person(name: "Jinie", imageName: "heart.fill"),
            Person(name: "Jian", imageName: "bolt.fill")
        ]
        
        List(people) { person in
            HStack {
                Image(systemName: person.imageName)
                Text(person.name)
            }
        }
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView()
    }
}
