//
//  ListOfMoviesRouter.swift
//  movies
//
//  Created by user252583 on 1/31/24.
//

import Foundation
import UIKit


protocol ListOfMoviesRouting: AnyObject{
    
    var detailRouter: DetailRouting? { get }
    var listOfMoviesView: ListOfMoviesView? { get }

    func showListOfMovies(window: UIWindow?)
    func showDetailMovie(withMovieId movieId: String)
}

class ListOfMoviesRouter: ListOfMoviesRouting{
 
    
    var detailRouter: DetailRouting?
    var listOfMoviesView: ListOfMoviesView?

    func showListOfMovies(window: UIWindow?){
        self.detailRouter = DetailRouter()
        let interactor = ListOfMoviesInteractor()
        let presenter = ListOfMoviesPresenter(listOfMoviesInteractor: interactor,router: self)

        listOfMoviesView = ListOfMoviesView(presenter: presenter)
        presenter.ui = listOfMoviesView
        
        window?.rootViewController = listOfMoviesView
        window?.makeKeyAndVisible()
    }
    
    func showDetailMovie(withMovieId movieId: String){
        guard let fromViewController = listOfMoviesView else {
            return
        }
        detailRouter?.showDetail(fromViewController: fromViewController, withMovieId: movieId)
    }

}
