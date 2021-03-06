//: Playground - noun: a place where people can play

import UIKit

//可选类型表示有值为x或者没有值nil

//可选类型需要带"?"
var serverResponseCode : Int? = 404
serverResponseCode = nil
//nil并不能用于非可选类型
//var name : String = nil   ➡️ error: nil cannot initialize specified type 'String'
/**var name:String = "yangyang"
name = nil
 */
//nil cannot be assigned to type 'String'
serverResponseCode = 200
if serverResponseCode != nil{
    print("serverResponseCode is \(serverResponseCode)")
    //使用叹号强制获取值
    print("serverResponseCode is \(serverResponseCode!)")
}

//可选绑定 optional binding
/* 可选绑定可以用在if或者while中可以做两件事情 判断可选值是否有值，如果有值可以完成赋值。 基本语法:
 if let constantName = someOptional{
    statements
 }
 可选类型新变量或者常量的作用域在if活着wihile中才可以使用
*/

if  let rspcode = serverResponseCode {
    print("serverPesponseCode is not null , actual number is \(rspcode)")
}else{
    print("serverResponseCode is null");
}

//异常处理不解释
//断言
var age = -1
//assert(age>0 , "A person's age cannot be less than zero")


//运算符
//空合运算符(Nil coalescing Operator)
serverResponseCode
serverResponseCode = nil
serverResponseCode ?? 404
//对可选类型做空判断 如果包含不是nil的值则解封，否则返回后面的默认值
//相当于
serverResponseCode != nil ? serverResponseCode! : 404
//区间运算符 tour里面说过了……
for index in 1...5{
    print("\(index)")
}
//...闭区间[a,b]

for index in 1..<5{
    print("\(index)")
}
//前闭后开[a,b)

//String 的操作 
// == 可以直接用来判断两个字符串是否相等

//swift中swith case
//case可以有多个值
var code = 200
switch code {
case 404,403: //case 多个值
    print("error occured ")
case 1...100:  //case 一个范围
    print("unknown code")
default:
    print("ok")
}


//case 可以用where语句来判断额外的条件
let yetAntherPoint = (1,-1)
switch yetAntherPoint {
case let (x,y) where x == y:
    print("(\(x),\(y)) is on the line x=y")
case let (x,y) where x == -y:
    print("(\(x),\(y)) is on the line x=-y")
case let (x,y): //此处并不能使用default因为需要使用变量来承接x，y
    print("(\(x),\(y)) is just some arbitrary point")
}

let stillAnotherPoint=(9,0)
switch stillAnotherPoint {
case (let distance,0),(0,let distance): //此处都匹配了distance
    print("on an axis , \(distance) from the onrigin")
default:
    print("not on an axis")
}

//循环控制语句 continue／break／fallthrough／throw／return
//其中比较不同的是fallthrough
//swift的case是遇到其中一个就自带break属性的，需要实现不带break属性时可以借助fallthrough
let intnum = 5
var description = "the number \(intnum) is "
switch intnum{
case 2,3,5,7,11,13,17,19:
    description += " a prime number and also"
    fallthrough
default:
    description += " an integer."
}
print(description)