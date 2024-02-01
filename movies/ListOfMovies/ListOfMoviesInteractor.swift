//
//  LisOfMoviesInteractor.swift
//  movies
//
//  Created by user252583 on 1/31/24.
//

import Foundation

protocol ListOfMoviesInteractable: AnyObject{
    func getListOfMovies() async -> PopularMovieResponseEntity
}

class ListOfMoviesInteractor: ListOfMoviesInteractable {
    
    func getListOfMovies() async -> PopularMovieResponseEntity {
        let url = URL(string : "https://api.themoviedb.org/3/movie/popular?api_key=d73e341bb8cd5f921561fd9c2d99cee2")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(PopularMovieResponseEntity.self, from: data)
    }
}

