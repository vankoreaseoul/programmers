import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    let str1Array: [String] = str1.map { String($0) }
    let str2Array: [String] = str2.map { String($0) }
    
    var str: String = ""
    
    for i in 0..<str1Array.count {
        str += str1Array[i] + str2Array[i]
    }
    
    return str
}