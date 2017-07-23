//
//  Constants.swift
//  ClimaApp
//
//  Created by Ulices Meléndez on 22/07/17.
//  Copyright © 2017 Ulices Meléndez Acosta. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "44b43a7daf2a331e423680e0bcd9021e"

typealias DownloadComplete = () -> ()


let CURRENT_URL = "\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)"

let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=44b43a7daf2a331e423680e0bcd9021e"
