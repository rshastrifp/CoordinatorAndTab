//
//  TransfersCoordinator.swift
//  CoordinatorTest
//
//  Created by Ronak Shastri on 2019-04-16.
//  Copyright © 2019 ron. All rights reserved.
//

import UIKit

class TransferCoordinator: NSObject {
    
    private(set) lazy var rootViewController: UINavigationController = {
        let controller = UINavigationController(rootViewController: ViewController2())
        controller.tabBarItem = UITabBarItem(title: "Transfer" , image: nil, selectedImage: nil)
        return controller
    }()
    
}

