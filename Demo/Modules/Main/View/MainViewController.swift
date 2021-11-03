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
    
    @IBOutlet private weak var headingLabel: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTheme()
        headingLabel.text = "main.heading.text".localized
    
        output.viewIsReady()
    }
    
    func setupTheme() {
        headingLabel.font = Fonts.heading
        headingLabel.textColor = Theme.black
        view.backgroundColor = Theme.white
    }
}

extension MainViewController: MainViewInput {
    
}
