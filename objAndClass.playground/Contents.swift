//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A Shape with \(numberOfSides) sides"
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDesc = shape.simpleDescription()

class NamedShape{
    var numberOfSides:Int = 0
    var name:String
    init(name:String) {//每个属性都需要赋值无论时声明还是构造器
        self.name = name //self比用来区别实例变量
    }
    
    func simpleDescripthon() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}
//如果删除对象前需要做一些清理 使用deinit 类似于析构？

//子类继承父类用 : 分隔 重写方法必须用override否则会报错


class Square:NamedShape{
    var sideLength : Double
    
    init(sideLength:Double,name:String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    override func simpleDescripthon() -> String {
        return "A square with sides of length \(sideLength) and name \(name)"
    }
}

var  test = Square(sideLength:5,name:"Square")
test.area()
test.simpleDescripthon()


//练习 图形类 圆

class Cirl : NamedShape{
    var radius : Double
    init(radius:Double,name:String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
    }
    
    func  area() -> Double {
        return M_PI_2 * 2 * radius * radius //swift 中的常量PI是哪个？
    }
    
    override func simpleDescripthon() -> String {
        return "A cirl with radius of length \(radius) "
    }
}

var testCirl = Cirl(radius:2,name:"pie")
testCirl.area()
testCirl.simpleDescripthon()

//属性可以有getter与setter
class EquilateralTriangle:NamedShape{
    var sideLength:Double = 0.0
    init(sideLength:Double,name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
        
    }
    
    var perimeter:Double{
        get{
            return 3.0*sideLength
        }
        /**set {
            sideLength = newValue/3.0  此处的newValue是默认存在的可以指代set接收到的新的值
        }
        */
        
        set(newLength) {//可以显式的指定一个新值替换newValue
            sideLength = newLength/3.0
        }
    }
    
    override func simpleDescripthon() -> String {
        return "An equilaterral triagle with sides of length \(sideLength)"
    }
    
}

var triangle = EquilateralTriangle(sideLength:1.0,name:"T")
triangle.perimeter
triangle.perimeter = 100.0
triangle.sideLength




