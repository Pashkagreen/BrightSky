//
//  HourlyWeatherCollectionViewCell.swift
//  BrightSky
//
//  Created by Paul Grin on 25/02/2024.
//

import UIKit

class HourlyWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "HourlyWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        contentView.backgroundColor = .gray
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public func configure(with: HourlyWeatherCollectionViewCellViewModel) {
        
    }
}
