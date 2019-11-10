//
//  MapFootballFieldPresenter.swift
//  FootballField
//
//  Created by Загид Гусейнов on 08.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class MapFootballFieldPresenter {
    weak var view: MapFootballFieldViewInput!
    var interactor: MapFootballFieldInteractorInput!
    var router: MapFootballFieldRouterInput!
    var foobtallField: FootballField!
}

extension MapFootballFieldPresenter: MapFootballFieldViewOutput {
    func backButton() {
        router.closeCurrentModule()
    }
    
    func viewIsReady() {
        view.show(footballField: foobtallField)
        view.setupInitialState()
    }
}

extension MapFootballFieldPresenter: MapFootballFieldInteractorOutput {
    
}
