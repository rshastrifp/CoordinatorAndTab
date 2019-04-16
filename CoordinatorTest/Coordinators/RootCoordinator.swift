//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by ron on 2019-01-19.
//  Copyright © 2019 ron. All rights reserved.
//

import Foundation
import UIKit

class RootCoordinator {
    
    private(set) lazy var rootViewController: UINavigationController = {
        let controller = UINavigationController(rootViewController: splashCoordinator.splashViewController)
        controller.view.backgroundColor = UIColor.clear
        controller.setNavigationBarHidden(true, animated: false)
        return controller
    }()
    
    private lazy var splashViewController: UIViewController = {
        let vc = SplashViewController()
        return vc
    }()
    
    private lazy var splashCoordinator: SplashCoordinator = {
        let splashCoordinator = SplashCoordinator()
        splashCoordinator.splashCoordinatorDelegate = self
        return splashCoordinator
    }()
    
    private var mainNavCoordinator: MainNavigationCoordinator?
    
    internal func startMainNavigation() {
        mainNavCoordinator = MainNavigationCoordinator(rootViewController: rootViewController)
        mainNavCoordinator?.start(animated: true)
    }
}

extension RootCoordinator : SplashCoordinatorDelegate {
    func triggerMainFlow() {
        self.startMainNavigation()
    }
}




