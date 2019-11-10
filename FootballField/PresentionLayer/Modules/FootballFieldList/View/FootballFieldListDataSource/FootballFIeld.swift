//
//  FootbalFIeldStruct.swift
//  FootballField
//
//  Created by Загид Гусейнов on 03.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation
import UIKit
import MapKit

struct FootballField {
    var image: [UIImage?]
    var name: String?
    var phoneNumber: String?
    var sizeField: String?
    var lockerRoom: String?
    var shower: String?
    var street: String?
    let location: CLLocationCoordinate2D?
}
