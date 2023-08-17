//
//  ContentView.swift
//  ListOfMovies
//
//  Created by Ahmed Fayek on 14/08/2023.
//

import SwiftUI

struct MovieView: View {
    
    @State var movies: [Movie] = []
    
    var body: some View { 
        List(movies) { movie in
            HStack{
                AsyncImage(url: movie.posterURL) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
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
        .task {
            do {
                let service = MoviesService()
                movies = try await service.getMovies()
            }catch {
                print(error)
            }
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
