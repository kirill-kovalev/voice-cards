//
//  MainCollectionCell.swift
//  Demo
//
//  Created by Кирилл on 03.11.2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

struct MainCollectionCellViewModel {
    
}

class MainCollectionCell: BaseCollectionViewCell {
    
    @IBOutlet private weak var gradientView: GradientView!
    private(set) var viewModel: MainCollectionCellViewModel?

    override func initSetup() {
        super.initSetup()
        let color = Color.allCases.randomElement()!
        
        gradientView.firstColor = color.firstColor
        gradientView.secondColor = color.secondColor
        
        contentView.layer.cornerRadius = 25
    }
    
    func setup(with viewModel: MainCollectionCellViewModel?) {
        self.viewModel = viewModel

    }
}

extension MainCollectionCell {
    enum Color: CaseIterable {
        case green, blue, orange, purple
        
        var firstColor: UIColor {
            switch self {
            case .green: return Theme.green1
            case .blue: return Theme.blue1
            case .orange: return Theme.orange1
            case .purple: return Theme.purple1
            }
        }
        
        var secondColor: UIColor {
            switch self {
            case .green: return Theme.green2
            case .blue: return Theme.blue2
            case .orange: return Theme.orange2
            case .purple: return Theme.purple2
            }
        }
    }
}
