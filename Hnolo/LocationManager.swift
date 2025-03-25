//
//  LocationManager.swift
//  Hnolo
//
//  Created by Mayur Kant Tyagi on 25/03/25.
//
import CoreLocation
import UIKit

class LocationManager {
    static let shared = LocationManager()
    var locationManager = CLLocationManager()
    
    private init(){
        locationManager.delegate = self
    }
    
    func startUpdatingLocation() {
        locationManager.requestAlwaysAuthorization()
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    
    func stopupdateLocation() {
        locationManager.stopUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate{
    func isEqual(_ object: Any?) -> Bool {
        <#code#>
    }
    
    var hash: Int {
        <#code#>
    }
    
    var superclass: AnyClass? {
        <#code#>
    }
    
    func `self`() -> Self {
        <#code#>
    }
    
    func perform(_ aSelector: Selector!) -> Unmanaged<AnyObject>! {
        <#code#>
    }
    
    func perform(_ aSelector: Selector!, with object: Any!) -> Unmanaged<AnyObject>! {
        <#code#>
    }
    
    func perform(_ aSelector: Selector!, with object1: Any!, with object2: Any!) -> Unmanaged<AnyObject>! {
        <#code#>
    }
    
    func isProxy() -> Bool {
        <#code#>
    }
    
    func isKind(of aClass: AnyClass) -> Bool {
        <#code#>
    }
    
    func isMember(of aClass: AnyClass) -> Bool {
        <#code#>
    }
    
    func conforms(to aProtocol: Protocol) -> Bool {
        <#code#>
    }
    
    func responds(to aSelector: Selector!) -> Bool {
        <#code#>
    }
    
    var description: String {
        <#code#>
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locations.forEach { location in
            print(location)
        }
    }
    
}
