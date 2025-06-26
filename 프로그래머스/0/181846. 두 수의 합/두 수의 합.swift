import Foundation

func solution(_ a:String, _ b:String) -> String {
    let aDigits = Array(a.reversed())
    let bDigits = Array(b.reversed())
    
    let maxLength = max(aDigits.count, bDigits.count)
    var carry = 0
    var result = ""
    
    for i in 0..<maxLength {
        let digitA = i < aDigits.count ? Int(String(aDigits[i]))! : 0
        let digitB = i < bDigits.count ? Int(String(bDigits[i]))! : 0
        
        let sum = digitA + digitB + carry
        carry = sum / 10
        result.append(String(sum % 10))
    }
    
    if carry > 0 {
        result.append(String(carry))
    }
    
    
    return String(result.reversed())
}