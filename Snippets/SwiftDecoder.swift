import Foundation

class SwiftDecoder {
    static func decode<T: Codable>(jsonString: String) -> T? {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {return try decoder.decode(T.self, from: jsonString.data(using: .utf8)!)} catch let err {
            debugPrint(err)
            return nil
        }
    }
}
