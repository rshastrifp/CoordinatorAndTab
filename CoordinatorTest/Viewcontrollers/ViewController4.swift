//
//  DashboardVc.swift
//  CoordinatorTest
//
//  Created by ron on 2019-01-20.
//  Copyright © 2019 ron. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    var headerView : UIView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        headerView = UIView()
        headerView.backgroundColor = .white
        self.view.addSubview(headerView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier : 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1).isActive = true
        
        self.title = "White"
    }
    
}
