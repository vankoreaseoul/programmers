import Foundation

func solution(_ my_string:String) -> [Int] {
    let lowercase: [String] = (97...122).map { String(UnicodeScalar($0)) }
    let uppercase: [String] = (65...90).map { String(UnicodeScalar($0)) }
    let alphabet: [String] = uppercase + lowercase
    
    return alphabet.map{ letter in my_string.map({String($0)}).filter({ $0 == letter }).count }
}