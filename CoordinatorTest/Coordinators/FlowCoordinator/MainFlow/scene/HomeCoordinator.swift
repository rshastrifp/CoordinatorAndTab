//
//  HomeCoordinator.swift
//  CoordinatorTest
//
//  Created by Ronak Shastri on 2019-04-16.
//  Copyright © 2019 ron. All rights reserved.
//

import UIKit

class HomeCoordinator: NSObject {
    private(set) lazy var rootViewController: UINavigationController = {
        let controller = UINavigationController(rootViewController: ViewController1())
        controller.tabBarItem = UITabBarItem(title: "Home" , image: nil, selectedImage: nil)
        return controller
    }()

    
}

