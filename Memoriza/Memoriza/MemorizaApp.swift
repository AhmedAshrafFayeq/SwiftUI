//
//  MemorizaApp.swift
//  Memoriza
//
//  Created by Ahmed Fayek on 10/03/2024.
//

import SwiftUI

@main
struct MemorizaApp: App {
    @State var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
