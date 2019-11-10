//
//  FootballFieldListViewOutput.swift
//  FootballField
//
//  Created by Загид Гусейнов on 02.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol FootballFieldListViewOutput: class {
    func viewIsReady()
    func didSelect(footballField: FootballField)
}
