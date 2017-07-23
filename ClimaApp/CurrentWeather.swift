//
//  CurrentWeather.swift
//  ClimaApp
//
//  Created by Ulices Meléndez on 22/07/17.
//  Copyright © 2017 Ulices Meléndez Acosta. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    
    private var _city: String!
    private var _date: String!
    private var _weatherType: String!
    private var _currentTemp: Double!
    
    var city: String {
        if _city == nil{
            _city = ""
        }
        return _city
    }
    
    var date: String {
        if _date == nil{
            _date = ""
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        let currentDate = dateFormatter.string(from: Date())
        _date = "Today, \(currentDate)"
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil{
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if _currentTemp == nil{
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        //Alamofire download
        let currentWeatherURL = URL(string: CURRENT_URL)!
        Alamofire.request(currentWeatherURL).responseJSON {
            response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, Any> {
                
                if let name = dict["name"] as? String {
                    self._city = name.capitalized
                    print(self._city)
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, Any>] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                        print(self._weatherType)
                    }
                }
                
                if let main = dict["main"] as? Dictionary<String, Any> {
                    if let kelvinTemp = main["temp"] as? Double {
                        self._currentTemp = round(kelvinTemp - 273.15)
                        print(self._currentTemp)
                    }
                }
            }
            completed()
        }
    }
}
