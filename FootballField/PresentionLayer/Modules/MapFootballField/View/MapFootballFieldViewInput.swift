//
//  MapFootballFieldViewInput.swift
//  FootballField
//
//  Created by Загид Гусейнов on 08.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol MapFootballFieldViewInput: class {
    func show(footballField: FootballField)
    func setupInitialState()
}
