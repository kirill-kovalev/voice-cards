//
//  MainPresenter.swift
//  Demo
//
//  Created by Кирилл on 03.11.2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol MainViewOutput {
    func viewIsReady()
    
    func numberOfCells() -> Int
    
    func viewModel(for index: Int) -> MainCollectionCellViewModel?
}

class MainPresenter {
    weak var view: MainViewInput?
    
    init() {
        
    }
}

extension MainPresenter: MainViewOutput {
    func viewIsReady() {
        
    }
    
    func numberOfCells() -> Int {
        10
    }
    
    func viewModel(for index: Int) -> MainCollectionCellViewModel? {
        nil
    }
}
