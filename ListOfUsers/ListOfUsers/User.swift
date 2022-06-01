//
//  User.swift
//  ListOfUsers
//
//  Created by Ahmed Fayeq on 01/06/2022.
//

import SwiftUI

// to use it in a list should inhert from Identifiable
struct User: Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
    
}

#if DEBUG
let testData = [
    User(id: UUID(), name: "User1", capacity: 1, hasVideo: false),
    User(id: UUID(), name: "User2", capacity: 1, hasVideo: false),
    User(id: UUID(), name: "User3", capacity: 1, hasVideo: false),
    User(id: UUID(), name: "User4", capacity: 1, hasVideo: false),
    User(id: UUID(), name: "User5", capacity: 1, hasVideo: false),
    User(id: UUID(), name: "User6", capacity: 1, hasVideo: false)
]
#endif
