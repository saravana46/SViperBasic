//
//  File.swift
//  ViperBasic
//
//  Created by apple on 17/02/21.
//  Copyright © 2021 apple. All rights reserved.
//

import Foundation

protocol ViewToPresenterProtocol: class {
    func startfunction(params: String)
}

protocol PresenterToInteractorProtocol {
    func label(params: String)
}

protocol InteractorToPresenterProtocol {
    func labeltext(text:String)
}

protocol PresenterToViewProtocol {
    func DoneFunction(text:String)
}
