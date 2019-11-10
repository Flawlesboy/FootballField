//
//  MapFootballFieldView.swift
//  FootballField
//
//  Created by Загид Гусейнов on 08.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import UIKit
import MapKit

class MapFootballFieldView: UIViewController {
    
    
    @IBAction func backButton(_ sender: Any) {
        output.backButton()
    }
    @IBOutlet weak var locationFootballField: MKMapView!
    var output: MapFootballFieldViewOutput!
    var footballField: FootballField!

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
}

extension MapFootballFieldView: MapFootballFieldViewInput {
    func setupInitialState() {
        let annotation = MKPointAnnotation()
        let coordinateRegion = MKCoordinateRegion(center: footballField.location!, latitudinalMeters: (footballField.location?.latitude)!, longitudinalMeters: (footballField.location?.longitude)!)
        annotation.coordinate = footballField.location!
        annotation.title = footballField.name
        locationFootballField.setRegion(coordinateRegion, animated: true)
        locationFootballField.addAnnotation(annotation)
    }
    
    func show(footballField: FootballField) {
        self.footballField = footballField
    }
}
