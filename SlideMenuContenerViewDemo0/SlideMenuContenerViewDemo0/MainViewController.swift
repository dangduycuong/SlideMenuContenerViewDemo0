//
//  File.swift
//  SlideMenuContenerViewDemo0
//
//  Created by duycuong on 1/28/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit
extension Notification.Name {
    static let nameKey = Notification.Name("Key")
}


class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
    
    @IBAction func openSlideMenu(_ sender: Any) {
        NotificationCenter.default.post(name: .nameKey, object: nil)
        //        navigationController?.popViewController(animated: true)
    }
    
}
