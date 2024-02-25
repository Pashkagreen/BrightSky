//
//  DailyWeatherCollectionViewCell.swift
//  BrightSky
//
//  Created by Paul Grin on 25/02/2024.
//

import UIKit

class DailyWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "DailyWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        contentView.backgroundColor = .brown
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
