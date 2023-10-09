//
//  main.swift
//  HomeworkLession4
//
//  Created by Hiếu đang cáu on 09/10/2023.
//

import Foundation

print("Bài 1")
let arrNum: [Int] = [1,3,2,7,2,9,1,5,8]
var indexA: Int = 0
var indexB: Int = -1
for i in arrNum.indices {
    if arrNum[i] % 2 != 0 {
        indexA = i
        break;
    }else{
        indexA = -1
    }
}


for i in arrNum.indices {
    if arrNum[i] % 2 == 0 {
        indexB = i
    }
}


if indexA != -1 && indexB != -1 {
    print("Vị trí đầu tiên của số lẻ trong mảng là \(indexA) và vị trí cuối cùng của số chẵn là \(indexB)")
}


print("Bài 2")

var min: Int = arrNum[0]
var max: Int = arrNum[0]

for i in arrNum {
    if i > max {
        max = i
    }
    if i < min {
        min = i
    }
}

print("Giá trị lớn nhất và nhỏ nhất của mảng lần lượt là : \(max) , \(min)")


print("Bài 3")

let number: Int = Int.random(in: 1...100)

while true {
    if let input = readLine(), let num = Int(input){
        print("Đáp án là : \(num)")
        if num == number {
            print("Chúc mừng")
            break
        } else if num < number {
            print("Bạn nhập số quá bé")
        } else{
            print("Bạn nhập số quá lớn")
        }
    }
}
