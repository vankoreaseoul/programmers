import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var strList: [String] = my_string.map { String($0) }
    strList.replaceSubrange(s...e, with: Array(strList[s...e]).reversed())
    return strList.joined()
}