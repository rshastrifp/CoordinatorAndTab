//
//  MainCoordinator.swift
//  CoordinatorTest
//
//  Created by ron on 2019-01-20.
//  Copyright © 2019 ron. All rights reserved.
//

import UIKit

class MainNavigationCoordinator {
    
    private(set) lazy var rootViewController: UINavigationController = {
        let controller = UINavigationController(rootViewController: mainTabBarController)
        controller.view.backgroundColor = UIColor.clear
        controller.setNavigationBarHidden(true, animated: false)
        return controller
    }()
    
    private(set) lazy var mainTabBarController: UITabBarController = {
        let controller = UITabBarController()
        controller.viewControllers = [
            homeCoordinator.rootViewController,
            transfersCoordinator.rootViewController,
            connectionsCoordinator.rootViewController,
            settingsLandingCoordinator.rootViewController
        ]
        return controller
    }()
        
    private(set) lazy var homeCoordinator: HomeCoordinator = {
        let coordinator = HomeCoordinator()
        return coordinator
    }()
    
    private(set) lazy var transfersCoordinator: TransferCoordinator = {
        let coordinator = TransferCoordinator()
        return coordinator
    }()
    
    private(set) lazy var connectionsCoordinator: ConnectionsCoordinator = {
        let coordinator = ConnectionsCoordinator()
        return coordinator
    }()
    
    private(set) lazy var settingsLandingCoordinator: SettingsCoordinator = {
        let coordinator = SettingsCoordinator()
        return coordinator
    }()
    
    
    init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
    }
    
    func start(animated: Bool) {
        rootViewController.setNavigationBarHidden(true, animated: false)
        rootViewController.setViewControllers([mainTabBarController], animated: animated)
    }
}


