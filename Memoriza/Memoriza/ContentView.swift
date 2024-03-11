//
//  ContentView.swift
//  Memoriza
//
//  Created by Ahmed Fayek on 10/03/2024.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "😈", "🤡", "💩"]
    
    var body: some View {
        HStack {
            ForEach (emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let baseRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                baseRectangle.fill(.white)
                baseRectangle.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }else {
                baseRectangle.fill()
            }
        } .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
