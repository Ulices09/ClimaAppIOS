//
//  ClimaViewController.swift
//  ClimaApp
//
//  Created by Ulices Meléndez on 19/07/17.
//  Copyright © 2017 Ulices Meléndez Acosta. All rights reserved.
//

import UIKit

class ClimaViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var currentWeatherTypeLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

