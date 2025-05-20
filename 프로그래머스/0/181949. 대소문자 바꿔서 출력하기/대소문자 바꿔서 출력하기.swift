import Foundation

let s1 = readLine()!

let strArray: [String] = s1.map { 
    return $0.isUppercase ? $0.lowercased() : $0.uppercased()
}

print(strArray.joined())
