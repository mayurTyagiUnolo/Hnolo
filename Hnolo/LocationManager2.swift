//
//  LocationManager2.swift
//  Hnolo
//
//  Created by Mayur Tyagi on 25/03/25.
//

import CoreLocation
import UIKit

class LocationManager2: NSObject {
    static let shared = LocationManager2()
    var locationManager = CLLocationManager()
    
    private override init(){
        super.init()
        locationManager.delegate = self
    }
    
    func startUpdatingLocation() {
        locationManager.requestAlwaysAuthorization()
//        locationManager.allowsBackgroundLocationUpdates = true
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    
    func stopupdateLocation() {
        locationManager.stopUpdatingLocation()
    }
}

extension LocationManager2: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locations.forEach { location in
            print(location)
            print("-------------------------------------------------")
        }
    }
}

