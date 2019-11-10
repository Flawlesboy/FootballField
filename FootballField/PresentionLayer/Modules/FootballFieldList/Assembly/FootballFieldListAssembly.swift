//
//  FootballFieldListAssembly.swift
//  FootballField
//
//  Created by Загид Гусейнов on 02.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation
import UIKit

class FootballFieldListAssembly {
    func view() -> UIViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FootballFieldListView") as! FootballFieldListView
        
        let presenter = FootballFieldListPresenter()
        let interactor = FootballFieldListInteractor()
        let router = FootballFieldListRouter()
        let footballFieldListDataSource = FootballFieldListDataSource()
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        view.output = presenter
        view.footballFieldListDataSource = footballFieldListDataSource
        footballFieldListDataSource.output = view
        interactor.output = presenter
        router.transitionHandler = view
        
        return view
    }
}
