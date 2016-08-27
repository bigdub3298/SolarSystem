//
//  PlanetTableViewController.swift
//  SolarSystem
//
//  Created by Wesley Austin on 8/18/16.
//  Copyright © 2016 Wesley Austin. All rights reserved.
//
import UIKit

class PlanetTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Add code after building planet class
        return PlanetController.planets.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlanetCell", forIndexPath: indexPath)
        
        let planet = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        cell.imageView?.contentMode = .ScaleAspectFit
        cell.imageView?.image = UIImage(named: planet.name.lowercaseString)
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            let planetDetailViewController = segue.destinationViewController as! PlanetUIViewController
            
            if let selectedPlanetCell = sender as? UITableViewCell,let indexPath = tableView.indexPathForCell(selectedPlanetCell) {
                let selectedPlanet = PlanetController.planets[indexPath.row]
                planetDetailViewController.planet = selectedPlanet
                
            }
            
            // Another way of passing planet to the destination view controller 
//            if let indexPath = sender?.indexPath {
//                let selectedPlanet = PlanetController.planets[indexPath.row]
//                let planetDetailViewController = segue.destinationViewController as? PlanetUIViewController
//                planetDetailViewController?.planet = selectedPlanet
//            }
        }
    }

}
