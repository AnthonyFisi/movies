//
//  MapperDetailMovieViewModel.swift
//  movies
//
//  Created by user252583 on 1/31/24.
//

import Foundation

struct MapperDetailMovieViewModel{
    func map(entity: DetailMovieEntity) -> DetailMovieViewModel{
        .init(title: entity.title,
              overview: entity.overview,
              backdropPath: URL(string: "https://image.tmdb.org/t/p/w200" + entity.backdropPath))
    }
}
