//
//  ViewController.swift
//  Hnolo
//
//  Created by Mayur Kant Tyagi on 25/03/25.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var singlePointBtn: UIButton!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var stopBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.showsUserLocation = true
        
    }

    @IBAction func getSinglePoint(_ sender: Any) {
        LocationManager2.shared.startUpdatingLocation()
    }
    
    @IBAction func startTracking(_ sender: Any) {
        LocationManager.shared.startUpdatingLocation()
    }
    
    @IBAction func stopTracking(_ sender: Any) {
        LocationManager.shared.stopupdateLocation()
    }
    
    
    @IBAction func stopSinglePoint(_ sender: Any) {
        LocationManager2.shared.stopupdateLocation()
    }
    
}

