//
//  ContentView.swift
//  ListOfUsers
//
//  Created by Ahmed Fayeq on 01/06/2022.
//

import SwiftUI

struct ContentView: View {
    var users: [User] = []
    
    var body: some View {
        NavigationView {
            List(users) { user in
                NavigationLink(destination: Text(user.name)) {
                    HStack {
                        Image(systemName: "photo")
                        VStack(alignment: .leading) {
                            Text(user.name)
                            Text("\(user.capacity)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationTitle(Text("Users"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(users: testData)
    }
}
#endif
