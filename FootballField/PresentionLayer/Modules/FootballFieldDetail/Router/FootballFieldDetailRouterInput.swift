//
//  FootballFieldDetailRouterInput.swift
//  FootballField
//
//  Created by Загид Гусейнов on 06.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol FootballFieldDetailRouterInput: class {
    func closeCurrentModule()
    func presentMapFootballFieldView(footballField: FootballField)
}
