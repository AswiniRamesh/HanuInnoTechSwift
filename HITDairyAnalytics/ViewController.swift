//
//  ViewController.swift
//  HITDairyAnalytics
//
//  Created by Aswini Ramesh on 8/22/17.
//  Copyright © 2017 Aswini Ramesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var sensorIDTextField: UITextField!
    @IBOutlet weak var sensorData: UITextField!
    @IBOutlet weak var submitSensorDataButton: UIButton!
    
    
    
    @IBAction func submitSensorDataPressed(_ sender: Any) {
        
        if (sensorIDTextField.text == BLANK_STRING) || (sensorData.text == BLANK_STRING) {
            let alertController = UIAlertController(title: ALERT_TITLE, message: SUBMIT_BUTTON_PROMPT, preferredStyle: .alert)
            let ok = UIAlertAction(title: OK, style: .default, handler: nil)
            alertController.addAction(ok)
            present(alertController, animated: true) { _ in }
        }
        else {
            let sensorDataObtained = sensorDataModel()
            sensorDataObtained.sensorID = sensorIDTextField.text!
            sensorDataObtained.sensorData = sensorData.text!.components(separatedBy: ",")
            print("\(sensorDataObtained.sensorData)")
            PostSensorDataToServer(sensorDataObt: sensorDataObtained)
        }
        
    }
    func PostSensorDataToServer(sensorDataObt:sensorDataModel)
    {
        SensorWebServices.sharedSensor.postSensorData();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

