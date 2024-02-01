//
//  DetailMovieEntity.swift
//  movies
//
//  Created by user252583 on 1/31/24.
//

import Foundation

struct DetailMovieEntity: Decodable{
    let title: String
    let overview: String
    let backdropPath: String
    let status: String
    let releaseDate: String
    let voteAverage: Double
    let voteCount: Int
}
