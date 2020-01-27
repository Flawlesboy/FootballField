//
//  FootballFieldListDataSource.swift
//  FootballField
//
//  Created by Загид Гусейнов on 02.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class FootballFieldListDataSource: NSObject {
    
    var nameFootballField = [FootballField(image: [UIImage(named: "FORZA PARK2"), UIImage(named: "FORZA PARK1"), UIImage(named: "FORZA PARK4")], name: "Forza Park", phoneNumber: "89654912525", sizeField: "40x22", lockerRoom: "Нет", shower: "Нет", street: "ул. Энгельса, 9Е", location: CLLocationCoordinate2DMake(42.979732, 47.471718)), FootballField(image: [UIImage(named: "Republic.center1"), UIImage(named: "Republic.center2"), UIImage(named: "Republic.center3")], name: "Republic.center", phoneNumber: "89288754343", sizeField: "40x20", lockerRoom: "Есть", shower: "Есть", street: "Азизова 43 (Промышленное шоссе)", location: CLLocationCoordinate2DMake(42.958600, 47.529927)), FootballField(image: [UIImage(named: "Анжи Арена1"),  UIImage(named: "Анжи Арена2")], name: "Анжи Арена мини поля", phoneNumber: "89894658886", sizeField: "40x20", lockerRoom: "Есть", shower: "Нет", street: "Акулиничева проспект, 21, Каспийск", location: CLLocationCoordinate2DMake(42.908895, 47.619166)), FootballField(image: [UIImage(named: "Эльтав1"), UIImage(named: "Эльтав2")], name: "Эльтав", phoneNumber: "89634070016", sizeField: "40x20", lockerRoom: "Есть", shower: "Нет", street: "Керимова 17", location: CLLocationCoordinate2DMake(42.993746, 47.450733)), FootballField(image: [UIImage(named: "39 школа1"), UIImage(named: "39 школа")], name: "39 школа", phoneNumber: "89285023737", sizeField: "40x20", lockerRoom: "Есть", shower: "Нет", street: "Калинина 47", location: CLLocationCoordinate2D(latitude: 42.962211, longitude: 47.505827)), FootballField(image: [UIImage(named: "Новокули1"), UIImage(named: "Новокули2")], name: "Новокули", phoneNumber: "8(989)7728737", sizeField: "40x20", lockerRoom: "Есть", shower: "Есть", street: "Новокули", location: CLLocationCoordinate2D(latitude: 42.973119, longitude: 47.509729)), FootballField(image: [UIImage(named: "Спартак")], name: "Спартак", phoneNumber: "79634142134", sizeField: "40x20", lockerRoom: "Есть", shower: "Есть", street: "парк Ленинского комсомола", location: CLLocationCoordinate2D(latitude: 42.983658, longitude: 47.487871)), FootballField(image: [UIImage(named: "Венгерских бойцов1"), UIImage(named: "Венгерских бойцов2"), UIImage(named: "Венгерских бойцов3")], name: "Венгерских бойцов", phoneNumber: "89882011616", sizeField: "40x20", lockerRoom: "Есть", shower: "Есть", street: "Венгерскиих бойцов 14", location: CLLocationCoordinate2DMake(42.958365, 47.492455)), FootballField(image: [UIImage(named: "Сельхоз1")], name: "Сельхоз", phoneNumber: "+79882679007", sizeField: "60x35", lockerRoom: "Есть", shower: "Нет", street: "Магомеда Гаджиева 180", location: CLLocationCoordinate2DMake(42.995345, 47.470388)), FootballField(image: [UIImage(named: "Штраф стоянка1")], name: "Штраф стоянка(редукторный)", phoneNumber: "89281119955", sizeField: "40x20", lockerRoom: "Есть", shower: "Есть", street: "Петра l- 25", location: CLLocationCoordinate2DMake(42.972008, 47.532846))]
    
    var tableView: UITableView!
    
    weak var output: FootballFieldListDataSourceOutput!
    
    func configure(tableView: UITableView) {
        self.tableView = tableView
        tableView.delegate = self
        tableView.dataSource = self        
    }    
}

extension FootballFieldListDataSource: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nameFootballField.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FootballFieldTableViewCell
        
        let arrayFootballFields = nameFootballField[indexPath.row]
        
        cell.nameFootballField.text = arrayFootballFields.name
        cell.streetFootballFeild.text = arrayFootballFields.street
        cell.imageField.image = arrayFootballFields.image.first as? UIImage
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let footballFields = nameFootballField[indexPath.row]
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        output.showFootball(field: footballFields)
    }
    
}
