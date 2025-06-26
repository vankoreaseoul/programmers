import Foundation

func solution(_ n_str:String) -> String {
    return recursive(n_str)
}

func recursive(_ str: String) -> String {
    guard str.hasPrefix("0") else { return str }
    return recursive(String(str.dropFirst()))
}