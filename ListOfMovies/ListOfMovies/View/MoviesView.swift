//
//  ContentView.swift
//  ListOfMovies
//
//  Created by Ahmed Fayek on 14/08/2023.
//

import SwiftUI

struct MoviesView: View {
    
    // to listen to any change in viewModel data
    @StateObject var viewModel = MoviesViewModel()
    
    var body: some View { 
        List(viewModel.movies) { movie in
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
            await viewModel.loadMovies()
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
    }
}
