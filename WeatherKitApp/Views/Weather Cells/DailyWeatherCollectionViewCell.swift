//
//  DailyWeatherCollectionViewCell.swift
//  WeatherKitApp
//
//  Created by Luis Calvillo on 7/26/24.
//

import UIKit

class DailyWeatherCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "DailyWeatherCollectionViewCell"
    
    private let tempLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    private let dayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 22, weight: .medium)
        return label
    }()
    
    private let icon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .label
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .tertiarySystemBackground
        
        contentView.addSubview(dayLabel)
        contentView.addSubview(icon)
        contentView.addSubview(tempLabel)
        
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with viewModel: DailyWeatherCollectionViewCellViewModel) {
        icon.image = UIImage(systemName: viewModel.iconName)
        tempLabel.text = viewModel.temperature
        dayLabel.text = viewModel.day
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            dayLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            dayLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            dayLabel.heightAnchor.constraint(equalToConstant: 32),
            dayLabel.widthAnchor.constraint(equalToConstant: 120),
            
            icon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            icon.leftAnchor.constraint(equalTo: dayLabel.rightAnchor, constant: 10),
            icon.heightAnchor.constraint(equalToConstant: 32),
            
            tempLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            tempLabel.leftAnchor.constraint(equalTo: icon.rightAnchor, constant: 20),
            tempLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16)
        ])
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        tempLabel.text = nil
        dayLabel.text = nil
        icon.image = nil
    }
}
