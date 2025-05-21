import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    var strList: [String] = my_string.map { String($0) }
    var indexs: [Int] = indices.sorted()
    
    indexs.enumerated().forEach {
        if $0.offset == 0 {
            strList.remove(at: $0.element)
        } else {
            strList.remove(at: $0.element - $0.offset)
        }
    }
    
    return strList.joined()
}