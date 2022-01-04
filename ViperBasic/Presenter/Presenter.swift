//
//  Presenter.swift
//  ViperBasic
//
//  Created by apple on 17/02/21.
//  Copyright © 2021 apple. All rights reserved.
//

import Foundation

class Presenter:ViewToPresenterProtocol {
    
    var interactor: PresenterToInteractorProtocol?
    var view: PresenterToViewProtocol?
    
    
    func startfunction(params: String) {
        interactor?.label(params: params)
    }

}
extension Presenter: InteractorToPresenterProtocol{
    func labeltext(text: String) {
        view?.DoneFunction(text: text)
    }
}
