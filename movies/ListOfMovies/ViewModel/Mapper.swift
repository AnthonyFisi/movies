//
//  Mapper.swift
//  movies
//
//  Created by user252583 on 1/31/24.
//

import Foundation

struct Mapper{
    func map(entity: PopularMovieEntity) -> ViewModel {
        ViewModel(
            title: entity.title,
            overview: entity.overview, 
            imageURL: URL(string: "https://image.tmdb.org/t/p/w200"+entity.imageURL)        
        )
    }
}
