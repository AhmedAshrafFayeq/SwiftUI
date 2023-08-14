//
//  ListOfMoviesApp.swift
//  ListOfMovies
//
//  Created by Ahmed Fayek on 14/08/2023.
//

import SwiftUI

@main
struct ListOfMoviesApp: App {
    var body: some Scene {
        WindowGroup {
            MovieView(movies: .mock)
        }
    }
}
