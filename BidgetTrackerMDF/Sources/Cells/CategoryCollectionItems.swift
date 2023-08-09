import UIKit
import SnapKit

class CategoryCollectionItems: UICollectionViewCell {
    
    fileprivate func configure() {
        if let image = settings?.image {
            imageView.image = UIImage(named: image)
        }
        
    }
    
    var settings: CompositionalModel? {
        didSet {
            configure()
        }
    }
    
    static let identifier = "CompositionalCell"
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .systemBackground
        imageView.clipsToBounds = true
        return imageView
    }()
    
//    private lazy var searchImage: UIImageView = {
//        let imageView = UIImageView()
//        let image = UIImage(named: "search")
//        imageView.image = image
//        return imageView
//    }()
//
//    private lazy var ovalImage: UIImageView = {
//        let imageView = UIImageView()
//        let image = UIImage(named: "Oval 1")
//        imageView.image = image
//        return imageView
//    }()
//
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        contentView.backgroundColor = .systemBackground
    }
    
    func setupHierarchy() {
        contentView.addSubview(imageView)
//        contentView.addSubview(ovalImage)
//        ovalImage.addSubview(searchImage)
    }
    
    func setupLayout() {
        imageView.snp.makeConstraints { make in
            make.top.left.right.equalTo(contentView)
            make.bottom.equalTo(contentView.snp.bottom).offset(-35)
            make.width.equalTo(48)
            make.height.equalTo(48)
        }
        
//        ovalImage.snp.makeConstraints { make in
//            make.top.left.right.bottom.equalTo(contentView)
//        }
//        
//        searchImage.snp.makeConstraints { make in
//            make.centerX.equalTo(ovalImage.snp.centerX)
//            make.centerY.equalTo(ovalImage.snp.centerY)
//            
//        }
    }
    
    func configuration(model: CompositionalModel) {
        self.imageView.image = UIImage(named: model.image)

    }
}
