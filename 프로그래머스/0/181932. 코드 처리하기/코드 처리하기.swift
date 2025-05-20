import Foundation

func solution(_ code:String) -> String {
    let array: [String] = code.map { String($0) }
    var mode: Bool = true
    var ret: String = ""
    
    for (index, item) in array.enumerated() {
        guard item != "1" else {
            mode.toggle()
            continue
        }
        
        if mode {
            guard index%2 == 0 else { continue }
            ret += item
        } else {
            guard index%2 != 0 else { continue }
            ret += item
        }
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}