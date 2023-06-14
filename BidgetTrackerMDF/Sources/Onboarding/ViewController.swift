//
//  ViewController.swift
//  BidgetTrackerMDF
//
//  Created by Роман Глухарев on 14/06/2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

// MARK: - UI elements
    private lazy var labelBold: UILabel = {
        let labelBold = UILabel()
        labelBold.text = "Retro occupy"
        labelBold.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        labelBold.textColor = UIColor(red: 0.108, green: 0.127, blue: 0.18, alpha: 1)
        return labelBold
    }()
    
    private lazy var longLabel: UILabel = {
        let longLabel = UILabel()
        longLabel.numberOfLines = 0
        longLabel.font = UIFont.systemFont(ofSize: 14)
        longLabel.textAlignment = .center
        longLabel.text = "Being the savage's bowsman, that is, the person who pulled the bow-oar in."
        longLabel.textColor = UIColor(red: 0.108, green: 0.127, blue: 0.18, alpha: 1)
        return longLabel
    }()
    
    private lazy var imageView: UIImageView = {
       let image = UIImage(named: "ImageMan")
        let imageView = UIImageView(image: image)
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private lazy var smallView: UIView = {
        let smallView = UIView()
        smallView.layer.cornerRadius = 20
        smallView.backgroundColor = .white
        return smallView
    }()
    
    private lazy var button: UIButton = {
       let button = UIButton()
        button.layer.cornerRadius = 10
        button.setTitle("I'm interested", for: .normal)
        button.backgroundColor = UIColor(red: 1, green: 0.2, blue: 0.471, alpha: 1)
        return button
    }()

// MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
// MARK: - Setups
    
    func setupView() {
        view.backgroundColor = UIColor(red: 0.949, green: 0.949, blue: 0.949, alpha: 1)
        
    }
    
    func setupHierarchy(){
        view.addSubview(imageView)
        view.addSubview(smallView)
        smallView.addSubview(labelBold)
        smallView.addSubview(longLabel)
        smallView.addSubview(button)
    }
    
    func setupLayout(){
        imageView.snp.makeConstraints { make in
            make.left.equalTo(72)
            make.right.equalTo(-71)
            make.height.equalTo(212)
            make.top.equalTo(148)
        }
        
        smallView.snp.makeConstraints { make in
            make.bottom.equalTo(-31)
            make.left.equalTo(15)
            make.right.equalTo(-15)
            make.height.equalTo(270)
        }
        
        labelBold.snp.makeConstraints { make in
            make.left.equalTo(smallView.snp.left).offset(95)
            make.right.equalTo(smallView.snp.right).inset(95)
            make.top.equalTo(34.5)
            make.width.equalTo(154)
        }
        
        longLabel.snp.makeConstraints { make in
            make.left.equalTo(29)
            make.right.equalTo(-29)
            make.top.equalTo(80.5)
            make.width.equalTo(287)
        }
        
        button.snp.makeConstraints { make in
            make.bottom.equalTo(smallView.snp.bottom).inset(45)
            make.left.equalTo(smallView.snp.left).offset(45)
            make.right.equalTo(smallView.snp.right).inset(45)
            make.height.equalTo(48)
        }
    }
    
// MARK: - Actions
    
}

