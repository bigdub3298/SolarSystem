//
//  PlanetUIViewController.swift
//  SolarSystem
//
//  Created by Wesley Austin on 8/18/16.
//  Copyright © 2016 Wesley Austin. All rights reserved.
//

import UIKit

class PlanetUIViewController: UIViewController {
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var lengthOfDay: UILabel!
    @IBOutlet weak var planetNavigationItem: UINavigationItem!
    
    var planet: Planet? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let planet = planet {
            planetNavigationItem.title = planet.name 
            planetImageView.image = UIImage(named: planet.name.lowercaseString)
            diameterLabel.text = "\(planet.diameter)"
            distanceLabel.text = "\(planet.millionKMsFromSun) 10^6km"
            lengthOfDay.text = "\(planet.dayLength) hours"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
