//
//  DashboardVc.swift
//  CoordinatorTest
//
//  Created by ron on 2019-01-20.
//  Copyright © 2019 ron. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    var headerView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()

    
    var titleLable : UILabel = {
        let label = UILabel()
        label.text = "ViewController 4"
        return label
    }()
    var goToButton : UIButton = {
        let btn = UIButton()
        btn.setTitle("Get Lost", for: .normal)
        btn.setTitle("Don't push,Going..", for: .focused)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(headerView)
        self.view.addSubview(titleLable)
        self.view.addSubview(goToButton)
        
        setConstrains()
    }
    
    
    func setConstrains() {
        headerView.translatesAutoresizingMaskIntoConstraints = false
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        goToButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            headerView.topAnchor.constraint(equalTo: self.view.topAnchor),
            headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor),
            
            titleLable.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            titleLable.topAnchor.constraint(equalTo: self.headerView.topAnchor, constant: 100),
            
            goToButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            goToButton.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
            goToButton.heightAnchor.constraint(equalToConstant: 100),
            goToButton.widthAnchor.constraint(equalToConstant: 100)
            ])
    }

}
