//
//  DetailRouter.swift
//  movies
//
//  Created by user252583 on 1/31/24.
//

import Foundation


import UIKit

protocol DetailRouting: AnyObject{
    func showDetail(fromViewController: UIViewController,withMovieId movieId: String)
}

class DetailRouter: DetailRouting{

    func showDetail(fromViewController: UIViewController,withMovieId movieId: String){
        let interactor = DetailInteractor()
        let presenter = DetailPresenter(movieId: movieId, interactor: interactor,mapper: MapperDetailMovieViewModel())
        let view = DetailView(presenter: presenter)
        presenter.ui = view
        
        fromViewController.present(view, animated: true)
    }

}
