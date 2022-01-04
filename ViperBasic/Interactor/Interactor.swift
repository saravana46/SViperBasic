//
//  Interactor.swift
//  ViperBasic
//
//  Created by apple on 17/02/21.
//  Copyright © 2021 apple. All rights reserved.
//

import Foundation

class Interactor: PresenterToInteractorProtocol{
    
    var presenter: InteractorToPresenterProtocol?

    func label(params: String){
        self.presenter?.labeltext(text: params)
    }
}
