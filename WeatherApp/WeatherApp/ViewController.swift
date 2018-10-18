//
//  ViewController.swift
//  WeatherApp
//
//  Created by Avinash on 10/18/18.
//  Copyright © 2018 SecondGenPESH. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var label: UILabel!
    
    var locationManager: CLLocationManager?
    
    
    func update(_ forecast: Forecast) {
        label.text = """
        \(Int(forecast.currently.temperature.rounded()))°, feels like \(Int(forecast.currently.apparentTemperature.rounded()))°. It's \(forecast.currently.summary.lowercased()) out.

        """
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.requestWhenInUseAuthorization()
    }
    
    
    func loadWeatherData(_ location: CLLocation) {
        let key = "20d54de9eca9558e4c836a4abb77dbf4"
        let location = "\(location.coordinate.latitude),\(location.coordinate.longitude)"
        let url = URL(string: "https://api.darksky.net/forecast/\(key)/\(location)")!
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                print(error)
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let forecast = try decoder.decode(Forecast.self, from: data)
                DispatchQueue.main.async {
                    self.update(forecast)
                }
            } catch {
                print("messed up decoding JSON: \(error)")
            }
        }
        
        dataTask.resume()
    }


}


extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            loadWeatherData(location)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse:
            manager.startUpdatingLocation()
        default:
            break
        }
    }
    
    
}



