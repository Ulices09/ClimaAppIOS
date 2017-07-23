//
//  Constants.swift
//  ClimaApp
//
//  Created by Ulices Meléndez on 22/07/17.
//  Copyright © 2017 Ulices Meléndez Acosta. All rights reserved.
//

import Foundation

let BASE_URL = "http://samples.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "44b43a7daf2a331e423680e0bcd9021e"

typealias DownloadComplete = () -> ()

//-12.0432, -77.0283

let CURRENT_URL = "\(BASE_URL)\(LATITUDE)-12.0432\(LONGITUDE)-77.0283\(APP_ID)\(API_KEY)"
