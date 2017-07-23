//
//  Location.swift
//  ClimaApp
//
//  Created by Ulices Meléndez on 23/07/17.
//  Copyright © 2017 Ulices Meléndez Acosta. All rights reserved.
//

import CoreLocation

class Location {
    
    static var  sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
    
}
