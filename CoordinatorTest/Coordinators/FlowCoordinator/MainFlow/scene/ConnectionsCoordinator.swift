//
//  BillsCoordinator.swift
//  CoordinatorTest
//
//  Created by Ronak Shastri on 2019-04-16.
//  Copyright © 2019 ron. All rights reserved.
//

import UIKit

class ConnectionsCoordinator: NSObject {
    
    private(set) lazy var rootViewController: UINavigationController = {
        let controller = UINavigationController(rootViewController: ViewController3())
        return controller
    }()
    
}

