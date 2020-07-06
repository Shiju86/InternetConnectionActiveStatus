//
//  ViewController.swift
//  NetworkConnectionCheck
//
//  Created by Shiju Varghese on 06/07/20.
//  Copyright © 2020 Shiju Varghese. All rights reserved.
//

import UIKit
import Network

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkInternetConnectStatus()
    }
    
    func checkInternetConnectStatus() {
        
        let pathMonitor = NWPathMonitor()
        pathMonitor.pathUpdateHandler = { path in
           
            if path.status == .satisfied {
                
                DispatchQueue.main.async {
                    self.view.backgroundColor = UIColor.green
                }
                print("Active Internet Connection")
            }
            else{
                DispatchQueue.main.async {
                    self.view.backgroundColor = UIColor.red
                }
                print("No Internet Connection")
            }
        }
        
        let queue = DispatchQueue(label: "Network")
        pathMonitor.start(queue: queue)
    }
}

