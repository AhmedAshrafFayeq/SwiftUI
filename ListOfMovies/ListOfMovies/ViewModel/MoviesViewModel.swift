//
//  MoviesViewModel.swift
//  ListOfMovies
//
//  Created by Ahmed Fayek on 20/08/2023.
//

import Foundation

//ObservableObject-> to reflect the changes to UI

@MainActor //to do the UI change in main thread
class MoviesViewModel: ObservableObject {
    
    @Published var movies = [Movie]()
    let service = MoviesService()
    
    func loadMovies() async {
        do {
            movies = try await service.getMovies()
        } catch {
            print("error")
        }
        
    }
}
