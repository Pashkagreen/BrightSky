//
//  IAPManager.swift
//  BrightSky
//
//  Created by Paul Grin on 24/02/2024.
//
import RevenueCat
import Foundation

final class IAPManager {
    static let shared = IAPManager()
    
    private init() {}
    
    func isSubscribed(completion: @escaping (Bool) -> Void) {
        Purchases.shared.getCustomerInfo { info, error in
            guard let subscriptions = info?.activeSubscriptions else { return }
            
            print("Subscriptions: \(subscriptions)")
            
            completion(!subscriptions.isEmpty)
        }
    }
}
