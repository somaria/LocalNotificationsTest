//
//  ViewController.swift
//  LocalNotificationsTest
//
//  Created by Phyo Nyein Oo on 11/3/19.
//  Copyright © 2019 Phyo Nyein Oo. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let center = UNUserNotificationCenter.current()
        
        var content = UNMutableNotificationContent()
        
        content.title = "Jurassic Park 3"
        content.subtitle = "Grab Lunch"
        content.body = "Come to the main lobby for lunch"
        content.sound = UNNotificationSound.default
        content.threadIdentifier = "TestNoti"
        
        let date = Date(timeIntervalSinceNow: 10)
        
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)


        let request = UNNotificationRequest(identifier: "content", content: content, trigger: trigger)
        
        center.add(request) { (error) in
            if error != nil {
                print("error", error?.localizedDescription)
            }
        }
    
    }
    


}

