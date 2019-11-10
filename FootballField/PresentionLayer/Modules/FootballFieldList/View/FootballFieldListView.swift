//
//  FootballFieldListViewController.swift
//  FootballField
//
//  Created by Загид Гусейнов on 02.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import UIKit

class FootballFieldListView: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var output: FootballFieldListViewOutput!
    var footballFieldListDataSource: FootballFieldListDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

}

extension FootballFieldListView: FootballFieldListViewInput {
    func setupInitialState() {
        footballFieldListDataSource.configure(tableView: tableView)
    }
}

extension FootballFieldListView: FootballFieldListDataSourceOutput {
    func showFootball(field: FootballField) {
        output.didSelect(footballField: field)
    }    
}
