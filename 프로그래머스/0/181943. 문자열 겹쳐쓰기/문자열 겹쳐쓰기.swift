import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    let my_string_list: [Character] = Array(my_string)
    let overwrite_string_list: [Character] = Array(overwrite_string)
    
    var str: String = ""
    
    for index in 0..<my_string_list.count {
        if (index < s) {
            str.append(my_string_list[index])
        } else if (index >= s && index < overwrite_string_list.count + s) {
            str.append(overwrite_string_list[index - s])
        } else {
            str.append(my_string_list[index])
        }
    }
    
    return str
}