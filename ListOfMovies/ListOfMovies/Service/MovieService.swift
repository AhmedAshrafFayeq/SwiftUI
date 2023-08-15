//
//  MovieService.swift
//  ListOfMovies
//
//  Created by Ahmed Fayek on 15/08/2023.
//

import Foundation

class MoviesService {
    private let jsonDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()

    func getMovies() async throws -> [Movie] {
        let url = URL(string: "https://api.themoviedb.org/3/movie/upcoming?api_key=\(Constant.apiKey)")!

        let (data, _) = try await URLSession.shared.data(from: url)

        let decoded = try jsonDecoder.decode(MoviesResponse.self, from: data)

        return decoded.results
    }
}
