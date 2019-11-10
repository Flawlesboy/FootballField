//
//  FootballFieldDetailView.swift
//  FootballField
//
//  Created by Загид Гусейнов on 06.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import UIKit
import MapKit
import FlexiblePageControl

class FootballFieldDetailView: UIViewController {
    
    @IBAction func backButton(_ sender: Any) {
        output.backButton()
    }
    @IBAction func buttonMapView(_ sender: Any) {
        output.didSelect()
    }
    @IBAction func sharedButton(_ sender: Any) {
        
        let activityController = UIActivityViewController(activityItems: [footballField.name, footballField.phoneNumber, footballField.location, footballField.image.first], applicationActivities: nil)
        
        present(activityController, animated: true, completion: nil)
    }
    @IBOutlet weak var colletionView: UICollectionView!
    @IBOutlet weak var pageControl: FlexiblePageControl!
    @IBOutlet weak var nameFootballFieldLabel: UILabel!
    @IBOutlet weak var numberPhoneLabel: UILabel!
    @IBOutlet weak var sizeFieldLabel: UILabel!
    @IBOutlet weak var lockerLabel: UILabel!
    @IBOutlet weak var showerLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    var footballField: FootballField!    
    var output: FootballFieldDetailViewOutput!
    var footballFieldDetailDataSource: FootballFieldDetailViewDataSource!

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        mapView.delegate = self
    }        
}

extension FootballFieldDetailView: FootballFieldDetailViewInput {
    func setupInitialState() {
        footballFieldDetailDataSource.configure(collectionView: colletionView)        
        
        pageControl.numberOfPages = footballField.image.count
        nameFootballFieldLabel.text = footballField.name
        numberPhoneLabel.text = footballField.phoneNumber
        sizeFieldLabel.text = footballField.sizeField
        lockerLabel.text = footballField.lockerRoom
        showerLabel.text = footballField.shower
        streetLabel.text = footballField.street        
        
        let annotation = MKPointAnnotation()
        let coordinateRegion = MKCoordinateRegion(center: footballField.location!, latitudinalMeters: (footballField.location?.latitude)!, longitudinalMeters: (footballField.location?.longitude)!)
        annotation.coordinate = footballField.location!
        annotation.title = footballField.name
        mapView.setRegion(coordinateRegion, animated: true)
        mapView.addAnnotation(annotation)        
    }
    
    func show(footballField: FootballField) {
        self.footballField = footballField        
        footballFieldDetailDataSource.show(footballField: footballField)
    }
}

extension FootballFieldDetailView: FootballFieldDetailViewDataSourceOutput {
    func didScroll(scrollView: UIScrollView) {
        pageControl.setProgress(contentOffsetX: scrollView.contentOffset.x, pageWidth: scrollView.bounds.width)
    }
}

extension FootballFieldDetailView: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        
    }
}
