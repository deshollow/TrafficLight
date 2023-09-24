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
    /*1,2,3,4 - tags for ViewController elements, from top to button*/
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLight.viewWithTag(1)?.alpha = 0.5
        trafficLight.viewWithTag(2)?.alpha = 0.5
        trafficLight.viewWithTag(3)?.alpha = 0.5
        button.setTitle("START", for: .normal)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        trafficLight.viewWithTag(1)?.layer.cornerRadius = (trafficLight.viewWithTag(1)?.frame.width ?? 0) / 2
        trafficLight.viewWithTag(2)?.layer.cornerRadius = (trafficLight.viewWithTag(2)?.frame.width ?? 0) / 2
        trafficLight.viewWithTag(3)?.layer.cornerRadius = (trafficLight.viewWithTag(3)?.frame.width ?? 0) / 2
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        button.setTitle("NEXT", for: .normal)
        
        if trafficLight.viewWithTag(1)?.alpha != 1 &&
            trafficLight.viewWithTag(2)?.alpha != 1 {
            trafficLight.viewWithTag(1)?.alpha = 1
            trafficLight.viewWithTag(3)?.alpha = 0.5
        } else if trafficLight.viewWithTag(1)?.alpha == 1 {
            trafficLight.viewWithTag(1)?.alpha = 0.5
            trafficLight.viewWithTag(2)?.alpha = 1
        } else if trafficLight.viewWithTag(2)?.alpha == 1 {
            trafficLight.viewWithTag(2)?.alpha = 0.5
            trafficLight.viewWithTag(3)?.alpha = 1
        }
    }
}

