import Foundation

public final class PListReader {
    
    let fileName : String
    
    let pathFinder : PathFinder
    
    public init(for fileName: String, pathFinder: PathFinder = Bundle.main) {
        self.fileName = fileName
        self.pathFinder = pathFinder
    }
}

// computed

public extension PListReader {
    var dictionary : NSDictionary? {
        if let path = pathFinder.path(forResource: fileName, ofType: "plist") {
            return .init(contentsOfFile: path)
        } else {
            return nil
        }
    }
    
    subscript<Value>(key: String) -> Value? {
        get {
            dictionary?.value(forKey: key) as? Value
        }
    }
}
