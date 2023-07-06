//
//  SettigsTableViewController.swift
//  BidgetTrackerMDF
//
//  Created by Роман Глухарев on 05/07/2023.
//

import UIKit

class SettingsTableViewController: UIViewController {
    
//    MARK: - Properties
    
    var settings: [TableViewModel]?
    
//    MARK: - Outlets
    
    private lazy var settingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(SettingTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .systemBackground
        return tableView
    }()
    
    private lazy var pinkView: UIView = {
        let pinkView = UIView()
        pinkView.backgroundColor = .systemPink
        pinkView.layer.cornerRadius = 20
        return pinkView
    }()
    
    private lazy var bellImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "bell")
        imageView.image = image
        return imageView
    }()
   
//    MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settings = TableViewModel.settings
        view.backgroundColor = .systemBackground
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
//    MARK: - Layout
    
    func setupView() {
        view.backgroundColor = .systemBackground
    }
    
    func setupHierarchy() {
        view.addSubview(pinkView)
        view.addSubview(bellImage)
        view.addSubview(settingsTableView)
    }
    
    func setupLayout() {
        
        pinkView.snp.makeConstraints { make in
            make.left.equalTo(view.snp.left).offset(25)
            make.right.equalTo(view.snp.right).offset(-25)
            make.top.equalTo(view.snp.top).offset(140)
            make.height.equalTo(88)
        }
        
        bellImage.snp.makeConstraints { make in
            make.left.equalTo(view.snp.left).offset(260)
            make.bottom.equalTo(pinkView.snp.bottom).offset(-27)
            make.height.equalTo(72)
            make.width.equalTo(72)
        }
        
        settingsTableView.snp.makeConstraints { make in
            make.top.equalTo(pinkView.snp.bottom).offset(46)
            make.left.equalTo(view.snp.left).offset(25)
            make.right.equalTo(view.snp.right).offset(-25)
            make.bottom.equalTo(view)
        }
        
    }
}

extension SettingsTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 81
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return settings?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SettingTableViewCell
        cell?.backgroundColor = .systemBackground
        cell?.settings = settings?[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
