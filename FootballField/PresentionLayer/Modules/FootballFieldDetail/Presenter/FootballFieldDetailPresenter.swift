//
//  FootballFieldDetailPresenter.swift
//  FootballField
//
//  Created by Загид Гусейнов on 06.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class FootballFieldDetailPresenter {
    weak var view: FootballFieldDetailViewInput!
    var interactor: FootballFieldDetailInteractorInput!
    var router: FootballFieldDetailRouterInput!
    var footballField: FootballField!
}


extension FootballFieldDetailPresenter: FootballFieldDetailViewOutput {
    func didSelect() {
        router.presentMapFootballFieldView(footballField: footballField)
    }
    
    func backButton() {
        router.closeCurrentModule()
    }
    
    func viewIsReady() {        
        view.show(footballField: footballField)
        view.setupInitialState()
    }
}

extension FootballFieldDetailPresenter: FootballFieldDetailInteractorOutput {
    
}
