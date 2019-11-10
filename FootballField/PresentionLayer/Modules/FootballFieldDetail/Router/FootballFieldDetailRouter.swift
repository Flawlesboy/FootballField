//
//  FootballFieldDetailRouter.swift
//  FootballField
//
//  Created by Загид Гусейнов on 06.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class FootballFieldDetailRouter {
    weak var transitionHandler: TransitionHandler!
}

extension FootballFieldDetailRouter: FootballFieldDetailRouterInput {
    func presentMapFootballFieldView(footballField: FootballField) {
        let vc = MapFootballFieldAssembly().view(footballField: footballField)
        transitionHandler.openModule(vc)
    }
    
    func closeCurrentModule() {
        transitionHandler.dismissView()
    }    
}
