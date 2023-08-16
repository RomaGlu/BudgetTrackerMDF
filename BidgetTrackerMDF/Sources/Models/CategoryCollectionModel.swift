import Foundation

struct CompositionalModel: Hashable {
    var image: String
}

extension CompositionalModel {
    static let modelsArray: [[CompositionalModel]] = [
        [CompositionalModel(image: "car"),
         CompositionalModel(image: "bank"),
         CompositionalModel(image: "money"),
         CompositionalModel(image: "coins"),
         CompositionalModel(image: "spoon"),
         
         CompositionalModel(image: "mask"),
         CompositionalModel(image: "townhouse"),
         CompositionalModel(image: "card"),
         CompositionalModel(image: "gift"),
         CompositionalModel(image: "basket"),
         
         CompositionalModel(image: "aim"),
         CompositionalModel(image: "sofa"),
         CompositionalModel(image: "headphones"),
         CompositionalModel(image: "pig"),
         CompositionalModel(image: "note"),
         
         CompositionalModel(image: "gym"),
         CompositionalModel(image: "Group 21"),
         CompositionalModel(image: "drug"),
         CompositionalModel(image: "translate"),
         CompositionalModel(image: "bag"),
         
         CompositionalModel(image: "cat"),
         CompositionalModel(image: "child"),
         CompositionalModel(image: "house"),
         CompositionalModel(image: "keyhouse"),
         CompositionalModel(image: "book"),
         
         CompositionalModel(image: "bus"),
         CompositionalModel(image: "plane"),
         CompositionalModel(image: "tools"),
         CompositionalModel(image: "Group 33"),
         CompositionalModel(image: "add")]
    ]
}
