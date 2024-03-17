//
//  MemorizeGame.swift
//  Memoriza
//
//  Created by Ahmed Fayek on 13/03/2024.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
     private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int)-> CardContent) {
        cards = []
        for pairIndex in 0..<max(2, numberOfPairsOfCards) {
            let content: CardContent = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: "\(pairIndex+1)a"))
            cards.append(Card(content: content, id: "\(pairIndex+1)b"))
        }
    }
    
    func choose(_ card: Card) {
        
    }
    
    mutating func shuffle() {
        cards.shuffle()
    }
    
    struct Card: Equatable, Identifiable {
        var isFaceUp = true
        var isMatched = true
        let content: CardContent
        
        var id: String
    }
}
