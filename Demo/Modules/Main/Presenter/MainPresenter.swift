//
//  MainPresenter.swift
//  Demo
//
//  Created by Кирилл on 03.11.2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol MainViewOutput {
    func viewIsReady()
    
    func numberOfCells() -> Int
    func viewModel(for index: Int) -> MainCollectionCellViewModel?
    
    func didChangePage()
    func didEndSwitchingToPage(at index: Int)
    func didTapCell(at index: Int)
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
        .init(text: "Some random text lmao")
    }
    
    func didChangePage() {
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
    }
    
    func didEndSwitchingToPage(at index: Int) {
        
    }
    
    func didTapCell(at index: Int) {
        
    }
}
