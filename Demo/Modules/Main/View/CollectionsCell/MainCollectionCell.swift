//
//  MainCollectionCell.swift
//  Demo
//
//  Created by Кирилл on 03.11.2021.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

struct MainCollectionCellViewModel {
    let text: String
}

class MainCollectionCell: BaseCollectionViewCell {
    
    @IBOutlet private weak var gradientView: GradientView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var coverTitleLabel: UILabel!

    private let titleMaskView = UIView()
    
    private(set) var viewModel: MainCollectionCellViewModel?

    override func initSetup() {
        super.initSetup()
        let color = Color.allCases.randomElement()!
        
        gradientView.firstColor = color.firstColor
        gradientView.secondColor = color.secondColor
        
        titleLabel.font = Fonts.heading
        titleLabel.textColor = Theme.black.withAlphaComponent(0.7)
        titleLabel.textAlignment = .center
        
        coverTitleLabel.textAlignment = titleLabel.textAlignment
        coverTitleLabel.font = titleLabel.font
        coverTitleLabel.textColor = Theme.black
        
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 45
        
        gradientView.layer.masksToBounds = true
        gradientView.layer.cornerRadius = 25
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let rect = contentView.bounds.insetBy(dx: 10, dy: 10)
        contentView.layer.shadowPath = UIBezierPath(roundedRect: rect, cornerRadius: contentView.layer.cornerRadius).cgPath
    }
    
    func setup(with viewModel: MainCollectionCellViewModel?) {
        self.viewModel = viewModel
        titleLabel.text = viewModel?.text
        coverTitleLabel.text = viewModel?.text
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
