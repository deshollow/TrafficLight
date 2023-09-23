//
//  ViewController.swift
//  TrafficLight
//
//  Created by deshollow on 23.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trafficLight: UIStackView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLight.viewWithTag(1)?.alpha = 0.3
        trafficLight.viewWithTag(2)?.alpha = 0.3
        trafficLight.viewWithTag(3)?.alpha = 0.3
        
    }


}

