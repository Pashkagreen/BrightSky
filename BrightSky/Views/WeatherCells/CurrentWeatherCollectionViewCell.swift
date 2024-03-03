//
//  CurrentWeatherCollectionViewCell.swift
//  BrightSky
//
//  Created by Paul Grin on 25/02/2024.
//

import UIKit

class CurrentWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "CurrentWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        contentView.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public func configure(with: CurrentWeatherCollectionViewCellViewModel) {
        
    }
}
