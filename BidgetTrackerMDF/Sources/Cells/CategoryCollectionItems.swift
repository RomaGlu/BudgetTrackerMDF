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
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .systemBackground
        imageView.clipsToBounds = true
        return imageView
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
    
    func setupView() {
        contentView.backgroundColor = .systemBackground
    }
    
    func setupHierarchy() {
        contentView.addSubview(imageView)
    }
    
    func setupLayout() {
        imageView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalTo(contentView)
        }
    }
    
    func configuration(model: CompositionalModel) {
        self.imageView.image = UIImage(named: model.image)

    }
}
