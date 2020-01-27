//
//  MapFootballFieldView.swift
//  FootballField
//
//  Created by Загид Гусейнов on 08.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import UIKit
import MapKit
import GoogleMaps

class MapFootballFieldView: UIViewController {
    
    var locationManager = CLLocationManager()
    
    @IBAction func backButton(_ sender: Any) {
        output.backButton()
    }
    @IBOutlet weak var locationFootballField: GMSMapView!
    
    var output: MapFootballFieldViewOutput!
    var footballField: FootballField!

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
}

extension MapFootballFieldView: MapFootballFieldViewInput {
    func setupInitialState() {

        let camera = GMSCameraPosition.camera(withLatitude: (footballField.location?.latitude)!, longitude: (footballField.location?.longitude)!, zoom: 15.0)
        locationFootballField.camera = camera
        locationFootballField.isMyLocationEnabled = true
        locationFootballField.settings.myLocationButton = true
        locationFootballField.padding = UIEdgeInsets(top: 0, left: 0, bottom: 30, right: 20)
        self.locationManager.startUpdatingLocation()
        self.locationManager.requestWhenInUseAuthorization()
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: (footballField.location?.latitude)!, longitude: (footballField.location?.longitude)!)
        marker.title = footballField.name
        marker.map = locationFootballField
    }
    
    func show(footballField: FootballField) {
        self.footballField = footballField
    }
}
