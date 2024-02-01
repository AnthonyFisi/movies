//
//  PopularMovieResponseEntity.swift
//  movies
//
//  Created by user252583 on 1/31/24.
//

import Foundation

struct PopularMovieResponseEntity : Decodable{
    
    let results: [PopularMovieEntity]
}
