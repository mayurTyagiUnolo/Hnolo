//
//  LocationManager.swift
//  Hnolo
//
//  Created by Mayur Kant Tyagi on 25/03/25.
//
import CoreLocation
import UIKit

class LocationManager: NSObject {
    static let shared = LocationManager()
    var locationManager = CLLocationManager()
    
    private override init(){
        super.init()
        locationManager.delegate = self
    }
    
    func startUpdatingLocation() {
        locationManager.requestAlwaysAuthorization()
        locationManager.allowsBackgroundLocationUpdates = true
        locationManager.startMonitoringSignificantLocationChanges()
    }
    
    func stopupdateLocation() {
        locationManager.stopMonitoringSignificantLocationChanges()
    }
}

extension LocationManager: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locations.forEach { location in
            print(location)
            SomeThingCDHelper.shared.saveBeat(lat: String(location.coordinate.latitude), lon: String(location.coordinate.longitude), date: Date(), id: UUID().uuidString)
        }
    }
}
