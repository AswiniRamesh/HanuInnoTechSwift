//
//  SensorDefines.swift
//  HITDairyAnalytics
//
//  Created by Aswini Ramesh on 8/22/17.
//  Copyright © 2017 Aswini Ramesh. All rights reserved.
//

import Foundation

#if !SensorDefines_h
    //#define SensorDefines_h
let ALERT_TITLE = "Dairy Analytics"
let SUBMIT_BUTTON_PROMPT = "Please fill all blank fields"
let WEBSERVICE_ERROR_MESSAGE = "Error in posting data.Please try later"
let WEBSERVICE_SUCCESS_MESSAGE = "Sensor Data posted successfully"
let CANCEL = "Cancel"
let OK = "OK"
let BLANK_STRING = ""
    
let AWS_URL = "http://ec2-54-83-191-130.compute-1.amazonaws.com:8080/com.org.SmartDairywebapplication/webapi/sensorRegistration/sensorData/"
let KAFKA_URL = "http://137.135.51.60:8080/server/kafka/post"

    
#endif
