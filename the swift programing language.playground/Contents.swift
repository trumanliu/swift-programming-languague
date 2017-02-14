//: Playground - noun: a place where people can play

import UIKit
//变量
var str = "Hello, playground"
var myVariable = 42
myVariable = 50
//常量
let myConstant = 42
let  price:Float  = 2.01


let label = "my MacBook Air"
let width = 94
//类型转换
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
//在string中进行拼接
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I hava \(apples + oranges) pices of fruit"

//数组
var shoppingList = ["catfish","water","tulips" ,"blue paint"]
shoppingList[1] = "bottle of water"
//字典
var occupations = ["Malcolm" : "captain" ,"Kaylee" : "Mechanic"]
occupations["foo"] = "bar"
occupations

//空数组与字典
let emptyArray = [String] ()
let emptyDictionary = [String:Float]()

//for循环
let individualScores = [75,43,103,87,12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    }else{
        teamScore += 1
    }
    
}
teamScore


var optionalString : String? = "Hello"
optionalString == nil
var OptionalName : String? = "truman Liu"
var greeting = "Hello"
if let name = OptionalName {
    greeting = "Hello,\(name)"
}

//switch case语句 不需要在子句中写break
let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber","watercress":
    let vegetableComment = "That would make a good tea sandwich"
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let VegetableComment = "Everything tastes good in soup"
}

//for in 可以遍历字典
let interstingNumbers = [
    "Prime" : [2,3,5,7,11,13],
    "Fibonacci" : [1,1,2,3,5,8],
    "Square":[1,4,9,16,25,36]
]
var largest = 0
var largestKind = ""
for(kind,numbers) in interstingNumbers{
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print(largest)
print(largestKind) //练习题要求输出最大的kind

//while 语句 while在前或后
var n = 2
while n < 100{
    n = n * 2
}
print(n)


var m = 2
repeat{
    m = m*2
}while m < 100
print(m)

//for循环中使用..<表示范围
var total = 0
for i in 0..<10{
    total +=  1
}
total
// 0..<10 ➡️ [0-10)
// 0...10 ➡️ [0-10]

var total2 = 0
for i in 0...10{
    total2 += 1
}
total2

//函数与闭包
func greet(person: String,day:String) -> String{
    return "Hello \(person), today is \(day)."
}
greet(person:"truman",day:"Tuesday")
//greet(day:"DiDi",person:"Monday") error: argument 'person' must precede argument 'day'

//函数的参数名称作为参数的标签，参数名称钱可以自定义参数标签，“_”表示不使用参数标签
func greet2(_ person: String,_ day:String) -> String{
    return "Hello \(person), today is \(day)."
}
greet2("Didi","Sunday")

func greet3(who person: String,_ day:String) -> String{
    return "Hello \(person), today is \(day)."
}
greet3(who:"Didi","Sunday")

// 使用元组返回多个值

func calculateStatistics(scores:[Int]) -> (
    min:Int,max:Int,sum:Int){
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        for score in scores{
            if score > max {
                max = score
            }else if score < min{
                min = score
            }
            sum += score
        }
        return(min,max,sum)
}
let statics = calculateStatistics(scores: [5,3,100,3,9])
statics.0
statics.max

//可变个数参数

func sumOf(numbers:Int...) -> Int {
    var sum = 0
    for number in numbers{
        sum += number
    }
    return sum
}

sumOf()
sumOf(numbers: 1,2,3)
func sumOfPara(numbers:Int...,kind:String) -> Int {
    var sum = 0
    for number in numbers{
        sum += number
    }
    print(kind)
    return sum
}

sumOfPara(numbers: 1,2,3,4 , kind: "wow")
//由于在调用方法时会显式指明参数名称，所以可变个参数的位置可以不是最后一个


//练习题：均值
func meanOf(numbers:Int...) -> Int {
    var sum = 0
    for number in numbers{
        sum += number
    }
    return sum/numbers.count
}

meanOf(numbers: 1,2,3,4,5,6,7)


//函数可以嵌套
func returnFifteen() -> Int {
    var y = 10
    func minus(){
        y = 25 - y
    }
    minus()
    return y
}

returnFifteen()

//函数时一级类型，可以作为返回值
func makeIncrementer() -> ( (Int) -> Int){
    func addOne(number:Int) -> Int{
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(1)

//函数可以当作参数传入另一个函数

func  hasAnyMatches(list:[Int],condition:(Int) -> Bool) -> Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanTen(number:Int) -> Bool{
    return number < 10
}

var numbers = [72,39,27,11]
hasAnyMatches(list: numbers, condition: lessThanTen)

//使用{} 来创建一个匿名闭包。使用in将参数根返回值类型与声明与闭包函数体进行分离
numbers.map({
    (number : Int) -> Int in
    let result = 3 * number
    return result
})


let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)





