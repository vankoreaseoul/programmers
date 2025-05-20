import Foundation

let s1 = readLine()!

let strArray: [String] = s1.map { 
    return $0.isUppercase ? String($0.lowercased()) : String($0.uppercased())
}

print(strArray.joined(separator: ""))
