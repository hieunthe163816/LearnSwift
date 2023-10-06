//
//  main.swift
//  Lession2
//
//  Created by Hiếu đang cáu on 02/10/2023.
//

import Foundation

let array = [1, 2, 3]
var emptyArr : [String] = []
let emptyArr2 = [String]()
var digits = [Int](repeating: 10, count: 10)
print(digits)

//các hàm support trong mảng
/**
 Kiểm tra mảng rỗng isEmpty

 */

print("Mảng emptyArr có rỗng hay không \(emptyArr.isEmpty)")

// Kiểm tra mảng có bao nhiêu phần tử
print("Mảng digits có số phần tử là : \(digits.count)")

// Truy cập vào index của mảng
print("Giá trị thứ 2 của mảng là : \(array[1])")

print("Phần tử cuối cùng của mảng là : \(array[array.count-1])")

print("Phần tử đầu tiên của mảng là : \(array.first)")
print("Phần tử cuối cùng của mảng là : \(array.last)")

var strString = "  Cộng   hoà xã hội chủ nghĩa Việt Nam"
var arrString : [String] = []
arrString = strString.components(separatedBy: " ")
var countChar: Int = 0
for i in arrString{
    if i.isEmpty {
        
    }else{
        countChar+=1
    }
}
print(arrString)
print("Số từ của chuỗi là : \(countChar)")

var numberOfCharacter : Int = 0

for(index, character) in strString.enumerated(){
    if(!character.isWhitespace){
        numberOfCharacter+=1
    }
}

print("Số ký tự của chuỗi là : \(numberOfCharacter)")


var strString1 = "Học lập trình tại techmaster, tôi đang học lập trình tại Techmaster jhd"
var arrStr1 : [String] = strString1.components(separatedBy: " ")
var removeStr = "techmaster"
arrStr1.removeAll { removeStr.contains($0)}

print(arrStr1)

//Kiểu dữ liệu dictionary

var airports = [String: String]()

airports["noibai"] = "Hà Nội"
airports["tansonnhat"] = "Tp. Ho Chi Minh"

print(airports)

airports.updateValue("Thành phố Hồ Chí Minh", forKey: "tansonnhat")
airports.updateValue("Nguyễn Trung Hiếu", forKey: "hieu")
print(airports)

while true {
    if let numberDay = readLine(){
        let intDay = Int(numberDay)
        if intDay == 1 {
            break
        }
        switch numberDay{
        case "2" :
            print("Thứ hai")
        case "3" :
            print("Thứ ba")
        case "4" :
            print("Thứ tư")
        case "5" :
            print("Thứ năm")
        case "6" :
            print("Thứ sáu")
        case "7" :
            print("Thứ bảy")
        case "8" :
            print("Chủ nhật")
        default :
            print("Nhập sai")
        }
    }
}
