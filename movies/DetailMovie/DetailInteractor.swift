//
//  DetailInteractor.swift
//  movies
//
//  Created by user252583 on 1/31/24.
//

import Foundation

protocol DetailInteractable: AnyObject{
    func getDetailMovie(withId id: String) async -> DetailMovieEntity
}

class DetailInteractor : DetailInteractable {
    func getDetailMovie(withId id: String) async -> DetailMovieEntity {
        let url = URL(string : "https://api.themoviedb.org/3/movie/\(id)?api_key=d73e341bb8cd5f921561fd9c2d99cee2")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        return try! jsonDecoder.decode(DetailMovieEntity.self, from: data)
    }
}
