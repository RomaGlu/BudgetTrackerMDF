//
//  ReusableView.swift
//  BidgetTrackerMDF
//
//  Created by Роман Глухарев on 02/08/2023.
//

import UIKit
import SnapKit

class ReusableView: UIView {
    
    private lazy var bellImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "bell")
        imageView.image = image
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.text = "Turn on notification"
        label.adjustsFontForContentSizeCategory = true
        label.font = UIFont.GTWalsheimProFont(weight: .regular, withStyle: .body, size: 21)
//        label.font = UIFont(name: "GTWalsheimPro-Bold", size: 21)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
       let label = UILabel()
        label.text = "Update your settings"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        backgroundColor = UIColor(red: 1, green: 0.2, blue: 0.47, alpha: 1)
        layer.masksToBounds = false
        layer.cornerRadius = 20
        layer.shadowOffset = CGSize(width: 0, height: 18)
        layer.shadowColor = UIColor(red: 1, green: 0.2, blue: 0.471, alpha: 0.2).cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 42
    }
    
    func setupHierarchy() {
        addSubview(bellImage)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
    }
    
    func setupLayout() {
        
        bellImage.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(260)
            make.bottom.equalTo(self.snp.bottom).offset(-27)
            make.height.equalTo(72)
            make.width.equalTo(72)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(25)
            make.top.equalTo(self.snp.top).offset(42)
            make.height.equalTo(24)
            make.width.equalTo(198)
        }
        
        subtitleLabel.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(25)
            make.top.equalTo(self.snp.top).offset(20)
            make.width.equalTo(140)
            make.height.equalTo(14)
        }
        
    }
}
