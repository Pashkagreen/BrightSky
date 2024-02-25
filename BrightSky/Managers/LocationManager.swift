//
//  LocationManager.swift
//  BrightSky
//
//  Created by Paul Grin on 24/02/2024.
//
import CoreLocation
import Foundation

final class LocationManager: NSObject, CLLocationManagerDelegate {
    
    // Location manager
    private let manager = CLLocationManager()
    
    // Closure to fetch completion
    private var locationFetchCompletion: ((CLLocation) -> Void)?
    
    // Location coords
    private var location: CLLocation? {
        didSet {
            guard let location else {
                return
            }
            
            locationFetchCompletion?(location)
        }
    }
    
    // Shared instance
    static let shared = LocationManager()
    
    // Get current location
    public func getCurrentLocation(completion: @escaping (CLLocation) -> Void) {
        
        self.locationFetchCompletion = completion
        
        manager.requestWhenInUseAuthorization()
        manager.delegate = self
        manager.startUpdatingLocation()
    }
    
    // Method from CLLocation to set self.location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first  else { return }
        
        self.location = location
        
        // Observe location updates
        manager.stopUpdatingLocation()
    }
}
