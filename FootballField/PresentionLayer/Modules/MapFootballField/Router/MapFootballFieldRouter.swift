//
//  MapFootballFieldRouter.swift
//  FootballField
//
//  Created by Загид Гусейнов on 08.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class MapFootballFieldRouter {
    weak var transitionHandler: TransitionHandler!
}

extension MapFootballFieldRouter: MapFootballFieldRouterInput {
    func closeCurrentModule() {
        transitionHandler.dismissView()
    }
}
