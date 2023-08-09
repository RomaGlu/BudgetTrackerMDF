import UIKit
import SnapKit

class CollectionView: UIView {
    
    private lazy var categoryNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Category name"
        label.font = UIFont.GTWalsheimProFont(weight: .regular, withStyle: .title1, size: 12)
       return label
    }()
    
    private lazy var categoryNameTextField: UITextField = {
       let textField = UITextField()
        textField.placeholder = "Category name here"
        textField.font = UIFont.GTWalsheimProFont(weight: .bold, withStyle: .title1, size: 20)
        return textField
    }()
    
    private lazy var lineView: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.18, alpha: 1)
        return view
    }()
    
    private lazy var selectIconLabel: UILabel = {
        let label = UILabel()
        label.text = "Select icon"
        label.font = UIFont.GTWalsheimProFont(weight: .regular, withStyle: .title1, size: 14)
       return label
    }()
    
    private lazy var saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Save", for: .normal)
        button.backgroundColor = UIColor(red: 1, green: 0.2, blue: 0.47, alpha: 1)
        button.layer.cornerRadius = 10
       return button
    }()
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CategoryCollectionItems.self, forCellWithReuseIdentifier: CategoryCollectionItems.identifier)
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupHierarchy() {
        addSubview(categoryNameLabel)
        addSubview(categoryNameTextField)
        addSubview(lineView)
        addSubview(selectIconLabel)
        addSubview(collectionView)
        addSubview(saveButton)
        
    }
    
    func setupLayout() {
        categoryNameLabel.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(36)
            make.top.equalTo(self.snp.top).offset(150)
            make.width.equalTo(90)
            make.height.equalTo(14)
        }
        
        categoryNameTextField.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(36)
            make.top.equalTo(categoryNameLabel.snp.bottom).offset(8)
            make.width.equalTo(205)
            make.height.equalTo(23)
        }
        
        lineView.snp.makeConstraints { make in
            make.top.equalTo(categoryNameTextField.snp.bottom).offset(7)
            make.left.equalTo(self.snp.left).offset(36)
            make.right.equalTo(self.snp.right).offset(-39)
            make.height.equalTo(1)
        }
        
        selectIconLabel.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(36)
            make.top.equalTo(lineView.snp.bottom).offset(32)
            make.width.equalTo(75)
            make.height.equalTo(14)
        }
        
        saveButton.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(45)
            make.bottom.equalTo(self.snp.bottom).offset(-76)
            make.width.equalTo(285)
            make.height.equalTo(48)
        }

        collectionView.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(36)
            make.right.equalTo(self.snp.right).offset(39)
            make.top.equalTo(selectIconLabel.snp.bottom).offset(13)
            make.bottom.equalTo(saveButton.snp.top).offset(-42)
        }
    }
}

