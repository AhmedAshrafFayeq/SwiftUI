//
//  ContentView.swift
//  ListOfMovies
//
//  Created by Ahmed Fayek on 14/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    let movies: [Movie]
    
    var body: some View {
        List(movies) { movie in
            HStack{
                AsyncImage(url: movie.posterURL) { image in
                    image.resizable().aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }.frame(width: 80)
                
                VStack(alignment: .leading) {
                    Text(movie.title).font(.headline)
                    Text(movie.overview).lineLimit(4)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(movies: .mock)
    }
}
