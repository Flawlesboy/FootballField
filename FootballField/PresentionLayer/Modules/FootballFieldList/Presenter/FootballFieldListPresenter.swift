//
//  FootballFieldListPresenter.swift
//  FootballField
//
//  Created by Загид Гусейнов on 02.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class FootballFieldListPresenter {
    weak var view: FootballFieldListViewInput!
    var interactor: FootballFieldListInteractorInput!
    var router: FootballFieldListRouterInput!
}

extension FootballFieldListPresenter: FootballFieldListViewOutput {
    func didSelect(footballField: FootballField) {        
        router.presentDetailView(footballField: footballField)
    }
    
    func viewIsReady() {
        view.setupInitialState()
    }
}

extension FootballFieldListPresenter: FootballFieldListInteractorOutput {
    
}
