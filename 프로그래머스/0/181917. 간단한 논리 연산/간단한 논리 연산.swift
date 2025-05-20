import Foundation

func solution(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
    let left: Bool = down(left: x1, right: x2)
    let right: Bool = down(left: x3, right: x4)
    
    return up(left: left, right: right)
}

func down(left: Bool, right: Bool) -> Bool {
    return left ? left : right
}

func up(left: Bool, right: Bool) -> Bool {
    return left ? right : left
}