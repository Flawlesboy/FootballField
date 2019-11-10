//
//  FootballFieldDetailAssembly.swift
//  FootballField
//
//  Created by Загид Гусейнов on 06.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation
import UIKit

class FootballFieldDetailAssembly {
    func view(footballField: FootballField) -> UINavigationController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FootballFieldDetailView") as! FootballFieldDetailView
        let nc = UINavigationController(rootViewController: view)
        
        let presenter = FootballFieldDetailPresenter()
        let interactor = FootballFieldDetailInteractor()
        let router = FootballFieldDetailRouter()
        let footballFieldDetailDataSource = FootballFieldDetailViewDataSource()
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        presenter.footballField = footballField
        
        view.output = presenter
        view.footballFieldDetailDataSource = footballFieldDetailDataSource
        footballFieldDetailDataSource.output = view
        interactor.output = presenter
        router.transitionHandler = view        
        
        return nc
    }
    
}
