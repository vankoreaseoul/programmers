import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    let strList: [String] = myString.map { String($0) }
    let patList: [String] = pat.map { String($0) }
    
    let index: Int = strList.indices.filter({ strList[$0] == patList[0] && $0+patList.count <= strList.count && Array(strList[$0..<($0+pat.count)]) == patList }).max()! + patList.count - 1
    
    return Array(strList[0...index]).joined()
    
    // return Array(strList.prefix(index + 1)).joined()
}

// abcdc

// cd