import Foundation

func solution(_ my_string:String) -> [String] {
    var strList: [String] = my_string.map({ String($0) })
    var word: String = ""
    var list: [String] = []
    
    strList.append(" ")
    
    for str in strList {
        if str != " " {
            word += str
        } else {
            list.append(word)
            word = ""
        }
    }
    
    return list
}