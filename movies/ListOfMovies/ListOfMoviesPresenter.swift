//
//  ListOfMoviesPresenter.swift
//  movies
//
//  Created by user252583 on 1/31/24.
//

import Foundation

protocol ListOfMoviesPresentable: AnyObject{
    var ui: ListOfMoviewsUI? {get}
    var viewModels: [ViewModel] {get}
    func onViewAppear()
    func onTapCell(atIndex: Int)
    
}

protocol ListOfMoviewsUI: AnyObject {
    func update (movies: [ViewModel])
}

class ListOfMoviesPresenter : ListOfMoviesPresentable  {
    
    
    weak  var ui: ListOfMoviewsUI?
    
    private let listOfMoviesInteractor : ListOfMoviesInteractable
    var viewModels: [ViewModel] = []
    private var models: [PopularMovieEntity] = []
    private let mapper: Mapper
    private let router: ListOfMoviesRouting
    
    init(listOfMoviesInteractor: ListOfMoviesInteractable, mapper: Mapper = Mapper(), router: ListOfMoviesRouting){
        self.listOfMoviesInteractor = listOfMoviesInteractor
        self.mapper = mapper
        self.router = router
    }
    
    func onViewAppear(){
        Task {
            models = await listOfMoviesInteractor.getListOfMovies().results
            viewModels = models.map(mapper.map(entity:))
            ui?.update(movies: viewModels)
        }
    }
    
    func onTapCell(atIndex: Int) {
        let movieId = models[atIndex].id
        router.showDetailMovie(withMovieId: movieId.description)
    }
}
