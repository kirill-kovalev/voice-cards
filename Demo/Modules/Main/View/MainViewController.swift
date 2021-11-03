//
//  MainViewController.swift
//  Demo
//
//  Created by Кирилл on 03.11.2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol MainViewInput: AnyObject {
    
}

class MainViewController: UIViewController {
    
    var output: MainViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        output.viewIsReady()
    }
}

extension MainViewController: MainViewInput {
    
}
