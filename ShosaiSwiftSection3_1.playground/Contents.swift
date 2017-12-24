//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func dice() -> Int{
    let number = 1 + arc4random_uniform(6)
    return Int(number)
}

for _ in 1...5{
    let num = dice()
    print (num)
}

func hello1(){
    print("ハロー")
}

func hello2() -> Void{
    print("ハロー")
}

func hello3() -> (){
    print("ハロー")
}

func half(num:Double){
    defer {
        print("計算終了")
    }
    
    guard num >= 10 else{
        return
    }
    
    let halfNum = num / 2
    print("\(num)の半分は\(halfNum)")
}

half(num:25)
half(num:9)
half(num:12)

func sum(numbers:Double...) -> Double{
    var total:Double = 0.0
    for num in numbers{
        total += num
    }
    return total
}

let goukei = sum(numbers: 5,6,7,8,9)
print(goukei)

func sumResult(kokugo:Int, suugaku:Int, eigo:Int) -> (total:Int, avg: Double){
    let total = kokugo + suugaku + eigo
    var avg = Double(total) / 3
    avg = round(avg * 10) / 10
    return (total, avg)
}

let result = sumResult(kokugo: 80, suugaku: 68, eigo: 72)
print("合計：\(result.total)")
print("平均：\(result.avg)")
