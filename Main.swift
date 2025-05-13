import Foundation

class tree {
    var feetTall: Int
    var leaves: Int
    var type: String
    
    init(feetTall: Int, leaves: Int, type: String) {
        self.feetTall = feetTall
        self.leaves = leaves
        self.type = type
    }
    func grow() {
        self.feetTall += 3
        self.leaves += 100
    }
    func grow(feetTall: Int) {
        self.feetTall += feetTall
    }
    func grow(feetTall: Int, leaves: Int) {
        self.feetTall += feetTall
        self.leaves -= leaves
    }

    func loseLeaves() {
        self.leaves = 0
    }
    func loseLeaves(leaves: Int) {
        self.leaves -= leaves
    }
}


func main() {
    let oakTree = tree(feetTall: 10, leaves: 100, type: "Oak")
    let pineTree = tree(feetTall: 20, leaves: 200, type: "Pine")

    print()
    print("Original state")
    print("\(oakTree.type) tree has \(oakTree.leaves) leaves & is \(oakTree.feetTall) feet tall.")
    print("\(pineTree.type) tree has \(pineTree.leaves) leaves & is \(pineTree.feetTall) feet tall.")
    print()

    oakTree.grow()
    pineTree.grow(feetTall: 5, leaves: 50)
    print("After growing:")
    print("\(oakTree.type) tree has \(oakTree.leaves) leaves & is \(oakTree.feetTall) feet tall.")
    print("\(pineTree.type) tree has \(pineTree.leaves) leaves & is \(pineTree.feetTall) feet tall.")
    print()

    oakTree.loseLeaves()
    pineTree.loseLeaves(leaves: 100)
    print("After losing leaves:")
    print("\(oakTree.type) tree has \(oakTree.leaves) leaves & is \(oakTree.feetTall) feet tall.")
    print("\(pineTree.type) tree has \(pineTree.leaves) leaves & is \(pineTree.feetTall) feet tall.")
}


main()