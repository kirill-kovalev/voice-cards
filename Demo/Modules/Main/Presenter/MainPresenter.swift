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
    
    private let models: [MainCollectionCellViewModel] = [
        .init(title: "Voice example 1", color: .blue, file: Resources.Files.voiceExample1),
        .init(title: "Voice example 2", color: .green, file: Resources.Files.voiceExample2),
        .init(title: "Voice example 3", color: .blue, file: Resources.Files.voiceExample3),
        .init(title: "Voice example 4", color: .orange, file: Resources.Files.voiceExample4),
        .init(title: "Voice example 5", color: .purple, file: Resources.Files.voiceExample5),
        .init(title: "Voice example 6", color: .green, file: Resources.Files.voiceExample6),
        .init(title: "Voice example 7", color: .orange, file: Resources.Files.voiceExample7),
    ]
    
    init() {
        
    }
}

extension MainPresenter: MainViewOutput {
    func viewIsReady() {
        
    }
    
    func numberOfCells() -> Int { models.count }
    
    func viewModel(for index: Int) -> MainCollectionCellViewModel? {
        models.at(index)
    }
    
    func didChangePage() {
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
    }
    
    func didEndSwitchingToPage(at index: Int) {
        
    }
    
    func didTapCell(at index: Int) {
        
    }
}
