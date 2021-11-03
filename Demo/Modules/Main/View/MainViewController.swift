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
        
        let cellNib = UINib(nibName: MainCollectionCell.nibName, bundle: .current)
        collectionView.register(cellNib, forCellWithReuseIdentifier: MainCollectionCell.reuseIdentifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.decelerationRate = .init(rawValue: 0.970)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.layer.masksToBounds = false
    
        output.viewIsReady()
    }
    
    func setupTheme() {
        headingLabel.font = Fonts.heading
        headingLabel.textColor = Theme.black
        view.backgroundColor = Theme.white
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let inset = collectionView.frame.width / 10
        collectionView.contentInset = .init(top: 0, left: inset, bottom: 0, right: inset)
        
        updateCollectionLayout()
    }
    
    private func updateCollectionLayout() {
        let cellSize = collectionView.frame
            .inset(by: collectionView.adjustedContentInset)
            .size
        let layout = MainCollectionViewLayout(pageSize: cellSize, lineSpacing: 0)
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        collectionView.collectionViewLayout.invalidateLayout()
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

}

extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        output.numberOfCells()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt index: IndexPath) -> UICollectionViewCell {
        let cell: MainCollectionCell? = collectionView.dequeueReusableCell(for: index)
        let viewModel = output.viewModel(for: index.item)
        cell?.setup(with: viewModel)
        return cell ?? .init()
    }
}

extension MainViewController: MainViewInput {
    
}
