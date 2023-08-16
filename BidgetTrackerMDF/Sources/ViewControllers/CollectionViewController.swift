import UIKit
import SnapKit

class CollectionViewController: UIViewController {
    
    let collectionView = CollectionView()
    
    override func loadView() {
        super.loadView()
        view = collectionView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add new category"
        navigationController?.navigationBar.prefersLargeTitles = true
        collectionView.backgroundColor = .systemBackground
    }
    
}

extension CollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CompositionalModel.modelsArray[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionItems.identifier, for: indexPath) as! CategoryCollectionItems
            item.configuration(model: CompositionalModel.modelsArray[indexPath.section][indexPath.item])
            return item
        default:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionItems.identifier, for: indexPath) as! CategoryCollectionItems
            item.configuration(model: CompositionalModel.modelsArray[indexPath.section][indexPath.item])
            return item
        }
    }
    
   func createLayout() -> UICollectionViewLayout {

       let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 5),
                                                   heightDimension: .fractionalHeight(1.0))
              let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 9.5, leading: 7.5, bottom: 9.5, trailing: 7.5)

              let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                    heightDimension: .fractionalWidth(0.2))
              let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                               subitems: [item])
              let section = NSCollectionLayoutSection(group: group)

              let layout = UICollectionViewCompositionalLayout(section: section)
              return layout
//
//            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.185),
//                                                  heightDimension: .fractionalHeight(0.185))
//            let item = NSCollectionLayoutItem(layoutSize: itemSize)
//            item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
//
//            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.83),
//                                              heightDimension: .fractionalWidth(0.16))
//            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
//                                                             subitems: [item])
//
//            let section = NSCollectionLayoutSection(group: group)
//
//            let layout = UICollectionViewCompositionalLayout(section: section)
//            return layout
        }
}
