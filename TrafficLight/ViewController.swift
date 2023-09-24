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
    
    /*1,2,3 - я решил юзать теги для ViewController
     элементов, сверху -> вниз*/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLight.viewWithTag(1)?.alpha = 0.5
        trafficLight.viewWithTag(2)?.alpha = 0.5
        trafficLight.viewWithTag(3)?.alpha = 0.5
        button.layer.cornerRadius = 15
        button.setTitle("START", for: .normal)
    }
    /*если использовал aspect ratio, обязателен метод
     viewDidLayoutSubviews или можно использовать
     только viewDidLoad?*/
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
        } else {
            trafficLight.viewWithTag(2)?.alpha = 0.5
            trafficLight.viewWithTag(3)?.alpha = 1
        }
    }
}
/*Я думаю что можно сделать было через использование
 массива, тк предпоалагаю что элементы стэка могут использоваться в нем, и сделать потом наверное for in, попробую потом для себя другим бранчем. Также я использовал теги, тк тут всего их 3 нужно и они сверху -> вниз, понимаю что если больше элементов я бы перетащил их просто во viewController, чтобы не путаться в цифрах.*/
