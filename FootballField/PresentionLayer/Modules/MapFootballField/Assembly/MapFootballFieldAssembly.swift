//
//  MapFootballFieldAssembly.swift
//  FootballField
//
//  Created by Загид Гусейнов on 08.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation
import UIKit

class MapFootballFieldAssembly {
    func view(footballField: FootballField) -> UINavigationController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MapFootballFieldView") as! MapFootballFieldView
        let nc = UINavigationController(rootViewController: view)
        
        let presenter = MapFootballFieldPresenter()
        let interactor = MapFootballFieldInteractor()
        let router = MapFootballFieldRouter()
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        presenter.foobtallField = footballField
        
        view.output = presenter
        interactor.output = presenter
        router.transitionHandler = view
        
        return nc 
    }
}
