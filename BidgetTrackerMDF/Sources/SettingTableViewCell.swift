//
//  SettingTableViewCell.swift
//  BidgetTrackerMDF
//
//  Created by Роман Глухарев on 05/07/2023.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
//    MARK: - Properties
    
    fileprivate func configure() {
        if let image = settings?.settingImage {
            settingImage.image = UIImage(named: image)
        }
        
        if let imageBackground = settings?.settingImageBackground {
            settingBackgroundImage.image = UIImage(named: imageBackground)
        }
        settingLabel.text = settings?.settingTitle
        settingDescriptionLabel.text = settings?.settingDescription
        
        if let textInfo = settings?.info {
            versionLabel.text = textInfo
        }
        
        if ((settings?.isSwitch) != nil) {
            switcher.isOn = true
        } else {
            switcher.isHidden = true
        }
    }
    
    var settings: TableViewModel? {
        didSet {
            configure()
        }
    }
    
    private lazy var settingBackgroundImage: UIImageView = {
        let backgroundImage = UIImageView()
        let image = UIImage()
        return backgroundImage
    }()
    
    private lazy var settingImage: UIImageView = {
        let settingImage = UIImageView()
        let image = UIImage()
        settingImage.clipsToBounds = true
        settingImage.layer.cornerRadius = 5
        settingImage.contentMode = .scaleAspectFit
        return settingImage
    }()
    
    
    private lazy var settingLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    private lazy var settingDescriptionLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemBackground
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .lightGray
        label.numberOfLines = 1
        label.textAlignment = .left
        return label
    }()
    
    private lazy var switcher: UISwitch = {
        let switcher = UISwitch()
        return switcher
    }()
    
    private lazy var versionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textAlignment = .right
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBackground
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryView = .none
    }
    
    func setupHierarchy() {
        contentView.addSubview(settingImage)
        contentView.addSubview(settingLabel)
        contentView.addSubview(settingDescriptionLabel)
        contentView.addSubview(switcher)
        contentView.addSubview(versionLabel)
    }
    
    func setupLayout() {
        
        settingImage.snp.makeConstraints { make in
            make.top.left.bottom.equalTo(contentView)
            make.width.equalTo(48)
        }
        
        settingLabel.snp.makeConstraints { make in
            make.left.equalTo(settingImage.snp.right).offset(19)
            make.top.equalTo(contentView.snp.top)
            make.height.equalTo(20)
            make.width.equalTo(153)
        }
        
        settingDescriptionLabel.snp.makeConstraints { make in
            make.left.equalTo(settingImage.snp.right).offset(19)
            make.top.equalTo(settingLabel.snp.bottom).offset(10)
            make.bottom.equalTo(contentView.snp.bottom)
        }
        
        switcher.snp.makeConstraints { make in
            make.left.equalTo(settingImage.snp.right).offset(232)
            make.centerY.equalTo(contentView.snp.centerY)
            make.width.equalTo(44)
            make.height.equalTo(20)
        }
        
        versionLabel.snp.makeConstraints { make in
            make.right.equalTo(contentView.snp.right)
            make.bottom.equalTo(contentView.snp.bottom).offset(-26)
            make.width.equalTo(45)
            make.height.equalTo(14)
        }
    }
    
    
}
