import Foundation

class Balloon {
    var color: String
    var size: Int
    var isPopped: Bool
    
    init(color: String, size: Int) {
        self.color = color
        self.size = size
        self.isPopped = false
    }
    
    func pop() {
        isPopped = true

    }
}