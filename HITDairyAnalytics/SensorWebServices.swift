//
//  SensorWebServices.swift
//  HITDairyAnalytics
//
//  Created by Aswini Ramesh on 8/22/17.
//  Copyright © 2017 Aswini Ramesh. All rights reserved.
//

import Foundation
import Alamofire


class SensorWebServices {
    
       static let sharedSensor = SensorWebServices()
    

    
    func postSensorData() {
        
                    
                   /* Alamofire.request(AWS_URL, method: .post, parameters: [
                        "Sensor_ID": "12",
                        "TotalData" : "ss,nm"
                        ]
                        ,encoding: JSONEncoding.default, headers: nil).responseString {
                            response in
                            switch response.result {
                            case .success:
                                print(response)
                                
                                break
                            case .failure(let error):
                                
                                print(error)
                            }
                            
                   }*/
        
        let todosEndpoint: String = AWS_URL
        let newTodo: [String: Any] = ["Sensor_ID": "12",
                                      "TotalData" : "ss,nm"]
        Alamofire.request(todosEndpoint, method: .post, parameters: newTodo,
                          encoding: JSONEncoding.default)
            .responseJSON { response in
                guard response.result.error == nil else {
                    // got an error in getting the data, need to handle it
                    print("error calling POST on /todos/1")
                    print(response.result.error!)
                    return
                }
                // make sure we got some JSON since that's what we expect
                guard let json = response.result.value as? [String: Any] else {
                    print("didn't get todo object as JSON from API")
                    print("Error: \(response.result.error)")
                    return
                }
                // get and print the title
                guard let todoTitle = json["title"] as? String else {
                    print("Could not get todo title from JSON")
                    return
                }
                print("The title is: " + todoTitle)
        }
        
        
    }


}
