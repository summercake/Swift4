//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
 数据类型
 1. 任何变量, 常量和直接数, 都有明确的数据类型
 2. Swift中的数据类型分为两大类
     1.) 值类型
         a.) 当把值类型的值赋给变量或常量时, 或把值类型的值作为参数传给函数的形参时, 赋予或传递的指都是拷贝
         b.) 值类型包括:
             (1). 整数类型
             (2). 浮点类型
             (3). 布尔类型
             (4). 元组类型
             (5). 字符类型
             (6). 字符串类型
             (7). 数组类型
             (8). 集合类型
             (9). 字典类型
             (10). 枚举类型
             (11). 结构体类型
    2.) 引用类型
         a.) 当把引用类型的值赋给变量或常量时, 或把引用类型的值作为实参传给函数的形参时, 赋予或传递的都是实参的引用
         b.) 引用类型包括:
             (1). 函数类型
             (2). 闭包表达式类型
             (3). 类类型
 */
/*
 整数类型
 1. 有符号整数类型:
     1.) 可以表示正整数， 0，和父整数
     2.) 有符号整数类型的五种表达方式
         a.) Int8： 在内存中占8位， 第一位是符号， 能表示整数的范围是：-128(-2^7) ~ 127(2^7-1)
         b.) Int16： 在内存中占16位， 第一位是符号， 能表示整数的范围是：-32768(-2^15) ~ 32767(2^15-1)
         c.) Int32： 在内存中占32位， 第一位是符号， 能表示整数的范围是：-2147483648(-2^31) ~ 2147483647(2^31-1)
         e.) Int64： 在内存中占64位， 第一位是符号， 能表示整数的范围是：(-2^63) ~ (2^63-1)
         d.) Int： 位数根据操作系统的不同而不同，如果是32位操作系统， 则是Int32， 如果是64为操作系统， 则是Int64
    3.) 无符号整数类型：只能表示正整数和0，不能表示负整数
         a.) UInt8： 在内存中占8位， 没有符号位， 能表示整数的范围是：0 ~ 256(2^8)
         b.) UInt16： 在内存中占16位， 没有符号位， 能表示整数的范围是：0 ~ 65536(2^16)
         c.) UInt32： 在内存中占32位， 没有符号位， 能表示整数的范围是：0 ~ 4294967296(2^32)
         e.) UInt64： 在内存中占64位， 没有符号位， 能表示整数的范围是：0 ~ (2^64)
         d.) UInt： 位数根据操作系统的不同而不同，如果是32位操作系统， 则是UInt32， 如果是64为操作系统， 则是UInt64
 3. 如果被存储的值超出了变量或常量的数据类型所能表示的数值范围， 程序是可以编译通过的， 但是运行时会出错
 4. 可以访问不同整数类型的min和max来得到其最小和最大值
 5. 如果声明并初始化整数类型的变量或常量时，不指定具体的整数类型， 系统默认将该变量或常量推断为Int类型
 6. 整数类型的直接数，有4种表示方法
     1.) 二进制: 以 0b 开头
     2.) 八进制: 以 0o 开头
     3.) 十进制: 默认的进制，纯数字
     4.) 十六进制: 以 0x 开头
 7. 可以给整数类型的直接数添加若干个0或_, 以提高可读性
 8. 如果不同整数类型的变量要进行赋值或运算， 那么必须先将其转换为相同的整数类型
 9. 如果变量或常量类型超过某整数类型长度， 那么就无法转换为该整数类型
 */
// 访问整数类型的最大和最小值
var min1 = Int8.min
var max1 = Int8.max
var min2 = UInt8.min
var max2 = UInt.max
// 整型类型推断
let v = 18
// 不同进制的表示方法
let decimalInt = 18
let binaryInt = 0b10010
let octalInt = 0o22
let hexadecimalInt = 0x12
// 提高可读性
var readableInt = 001_123_456_789 // 等同于1123456789
// 类型转换
var i8: Int8 = 23
var i16: Int16 = 58
i16 = Int16(i8)
i8 = Int8(i16)
i8 + Int8(i16)
Int16(i8) + i16


/*
 浮点类型
 1. 浮点类型用于表示浮点数, 也就是小数
 2. 浮点类型有两种表示方式
     1.) Float 表示32位的浮点类型， 可以精确到小数点后6位
     2.) Double 表示64为的浮点类型， 可以精确到小数点后15位
 3. 具体选用哪种浮点类型，取决于所存储的浮点数的范围，通常情况下， 推荐使用Double
 4. 如果声明的浮点类型的变量或常量时，不指定具体的数据类型，系统默认将该变量或常量的数据类型推荐为Double
 5. 浮点类型的直接数有两种表示方式:
     1.) 十进制指数表示形式： 以 e 作为底数， men = m乘以10的n次方
     2.) 十六进制的指数表示形式： 以 p 作为底数， 0xmpn = m对应的十进制数乘以2的n次方
 6. 可以给浮点类型的直接数添加若干个0或_， 以提高其可读性
 7. 计算机存储浮点数时，是不准确的，因此， 对于浮点数的比较需要格外小心
 8. 比较两个浮点数是否相等时，比较可靠的做法是，比较其绝对值是否小于一个非常小的数值
 9. 如果把两个不同的浮点类型的变量或常量进行运算(包括赋值，算术运算，比较运算)，必须显式地将其转换为相同的浮点类型，否则编译会出错
 10. 当把浮点类型转换为整数类型时，在该浮点类型的值不超出该整数类型所表示数值范围的前提下，浮点类型的值的小数部分会被截掉
 11. 如果在进行类型转换的时候，被转换的变量或常量的值超出了转换后的数据类型， 所能表示的数值范围，程序是可以编译通过的，但是运行时会出错
 */
var f: Float = 0.123456789
var d: Double = 0.1234567890123456789
//
let decimalDouble = 0.380859357
// 380.859375乘以10的-3次方
let exponentDecimalDouble = 380.859375e-3
// (12 + 3 / 16)乘以2的-5次方
let exponentHexdecimalDouble = 0xC.3p-5
// 提高可读性
let readableInt1 = 001_023_456.007_018_090 // 等同于1023456.00701809
// 比较浮点数
let db = 1.1
db + 0.1 == 1.2 // return false
abs(db + 0.1 - 1.2) < 0.000000000000000001 // return true
// 类型转换
d = Double(f)
f = Float(d)

/*
 布尔类型
 1. 布尔类型 表示一个逻辑值，该逻辑值要么是真，要么是假，分别用true和false表示
 2. 布尔类型只要用于条件判断语句中
 */
var isBool: Bool = true
var isDog: Bool = false
var i = 6
if i > 5{
    print("true")
}else{
    print("false")
}

/*
 元组类型
 1. 元组相当于关系型数据库中的一条记录，它将多个任意数据类型的值合并为一个值
 2. 元组类型的值的语法格式为：(item1, item2, item3, item4)
 3. 访问元组中的元素， 有以下几种方式
 1.) 使用索引值访问
 2.) 使用指定的名称访问
 3.) 把元组中的元素分解为多个变量或常量，然后使用变量名或常量名访问
 4. 如果元组中的某个元素不需要被访问， 那么该不被访问的元素的名称可以用 _ 来代替
 5. 元组的主要是用于多个相关值的临时组合，比如用作函数的返回值
 6. 如果需要持久化的存储复杂数据，不适合使用元组，可以考虑使用类或结构体
 */
let turple1 = ("jack", 18, true)
turple1.0
turple1.1
turple1.2

let turple2 = (name: "jack", age: 18, isMarried: true)
turple2.name
turple2.age
turple2.isMarried

let turple3: (name: String,age: Int,isMarried: Bool) = ("jack", 18, true)
turple3.name
turple3.age
turple3.isMarried

let (name, age, isMarried) = ("jack", 18, true)
name
age
isMarried

let turple4: (String, Int, Bool) = (name: "jack", _: 18, isMarried: true)

func readLineFromFile()->(isEOF: Bool, readLine: String){
    return (false, "This is 3rd line")
}

// 使用元组交换两个变量的值
var str1 = "Hello"
var str2 = "Swift"
(str1, str2) = (str2, str1)

/*
 可选类型
 1. 有时可能会存在"值缺失"的情况， 比如数据类型相互转换失败时
 2. "值缺失"用 nil 表示
 3. 可以选类型的变量或常量, 其默认值是nil
 4. 可以使用比较运算 == 或 != 把一个可选类型的变量或常量和nil做比较, 以判断该变量或常量是否有值
 5. 对于可选类型的变量或常量, 如果想要访问其包装的实际值, 可以在变量或常量后面添加 ! 进行强制解包
 6. 对 nil 进行强制解包会导致运行错误
 7. 对于可选类型的变量或常量, 如果想要访问其包装的实际值, 也可以使用可选绑定进行解包
 8. 对于可选类型的变量或常量, 如果想要访问器包装的实际值, 推荐使用可选绑定而不是强制解包, 因为 nil 而导致失败
 9. 隐式解包 如果确定一个可选变量或常量始终是有值的, 也就是说, 不可能存在值缺失的情况, 那么可以在声明变量或常量时用叹号!代替?
 */

var optionalType: Int?
optionalType = Int("123") // 123
//optionalType = Int("123abc") // nil
// 解包
print(optionalType!)

var f1: Float? = 1.8
var f2: Float? = 1.5
var f3: Float? = 1.6
print((f1! + f2! + f3!)/3)

// 通过可选绑定进行解包
var optionalBinding: Int?
optionalBinding = Int("123")
if let actualValue = optionalBinding {
    print(actualValue)
}else{
    print("false")
}
// 上面的可选绑定等同于
if optionalBinding != nil{
    let actualValue = optionalBinding!
    print(actualValue)
}else{
    print("false")
}
// 可以同时是使用多个可选绑定进行条件判断, 只要其中有一个失败, 那么则返回false
if let actualF1 = f1, let actualF2 = f2, let actualF3 = f3 {
    print(actualF1 + actualF2 + actualF3)
}else{
    print("false")
}
// 上面的判断等同于
if let actualF1 = f1{
    if let actualF2 = f2{
        if let actualF3 = f3 {
            print(actualF1 + actualF2 + actualF3)
        }else{
            print("false")
        }
    }else{
        print("false")
    }
}else{
    print("false")
}
// 隐式解包
var goodValue: Int! = 18
print(goodValue)

if let actualGoodValue = goodValue{
    print(actualGoodValue)
}
if goodValue != nil {
    print(goodValue)
}

/*
 类型别名
 1. 通过关键字 typealias 为任意一个已经存在的数据类型起一个别名
 */
typealias UnsignedInteger8 = UInt8
typealias double = Double
var newValue: UnsignedInteger8 = 12
var newerValue: double = 12.0
