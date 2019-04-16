//
//  SplashCoordinator.swift
//  CoordinatorTest
//
//  Created by Ronak Shastri on 2019-04-16.
//  Copyright © 2019 ron. All rights reserved.
//

import Foundation

protocol SplashCoordinatorDelegate: AnyObject {
    func triggerMainFlow()
}

class SplashCoordinator {
    
    var splashViewController = SplashViewController()
    var splashCoordinatorDelegate : SplashCoordinatorDelegate?
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
            print("Let's assume authentication was successful.")
            self.splashCoordinatorDelegate?.triggerMainFlow()
        })
    }
    
}
