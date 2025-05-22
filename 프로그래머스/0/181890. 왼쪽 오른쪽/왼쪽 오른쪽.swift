import Foundation

func solution(_ str_list:[String]) -> [String] {
    if str_list.firstIndex(of: "l") == nil && str_list.firstIndex(of: "r") == nil {
        return []
    } else if str_list.firstIndex(of: "l") != nil && str_list.firstIndex(of: "r") == nil {
        // l 앞
        return Array(str_list.prefix(str_list.firstIndex(of: "l")!))
        
    } else if str_list.firstIndex(of: "l") == nil && str_list.firstIndex(of: "r") != nil {
        // r 뒤
        return Array(str_list.suffix( str_list.count - 1 - str_list.firstIndex(of: "r")!) )
        
    } else {
        if str_list.firstIndex(of: "l")! < str_list.firstIndex(of: "r")! {
            // l 앞
            return Array(str_list.prefix(str_list.firstIndex(of: "l")!))
            
        } else {
             // r 뒤
            return Array(str_list.suffix( str_list.count - 1 - str_list.firstIndex(of: "r")!) )
        }
    }
    
    
    return []
}