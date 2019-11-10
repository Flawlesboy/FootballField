//
//  FootballFieldListRouter.swift
//  FootballField
//
//  Created by Загид Гусейнов on 02.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class FootballFieldListRouter {
    weak var transitionHandler: TransitionHandler!
}

extension FootballFieldListRouter: FootballFieldListRouterInput {
    func presentDetailView(footballField: FootballField) {
        let vc = FootballFieldDetailAssembly().view(footballField: footballField)
        transitionHandler.openModule(vc)
    }
}
