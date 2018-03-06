//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
 字符
 1. 在程序中, 文本内容用字符串来表示
 2. 字符串由一系列的字符组成, 例如 "Hello world", 字符串又由多个字符组成
 3. 字符的表示方法通常有两种,
     1.) 直接使用双引号引起来, 其中双引号中可以为: 字符本身, 字符的转义字符, 字符的 Unicode 编码
     2.) 调用 Character 的构造器 init(_s: String), 其中, 参数是只包含一个字符的字符串
 4. 字符变量和常量在使用前必须先声明并初始化, 包括
     1.) 给变量或常量起一个名字
     2.) 指定变量或常量的数据类型为 Character
     3.) 给变量或常量赋予一个初始值
 5. 如果使用隐式的方式指定变量或常量的数据类型, 并且给变量或常量赋予的初始值是直接使用双引号引起来的字符, 那么编译器会默认将对应变量或常量的数据类型推断为字符串类型, 而不是字符类型
 6. 字符是值类型, 当把字符赋给变量或常量时, 赋予的是值的拷贝
 7. 系统在底层是以 Unicode Scalar的形式存储每个字符
     1). 每个字符都是一个或多个 Unicode Scalar 的有序组合
     2). Unicode Scalar 是 21 位的 Unicode 编码, 用 UInt32 类型的值来表示
     3). 对于有些由多个 Unicode Scalar 组成的字符, Swift 提供了与其等价的单个 Unicode Scalar
 8. 如果两个字符变量或常量存储的 Unicode Scalar 序列表示的是同一个字符, 这两个字符变量或常量就是相等的
 */
Character("m")
/*
 转义字符 \
 1. 退格 \b
 2. 空字符 \0
 3. 反斜线 \\
 4. 制表符 \t
 5. 换行 \n
 6. 回车 \r
 7. 双引号 \"
 9. 单引号 \'
 */
"\"1234\""
/*
 使用 Unicode 表示字符
 */
"\u{22}"
"\u{2665}"
/*
 字符变量与常量
 */
let char1: Character = "a"
let char2 = "b" // String
let char3 = Character("b") // Character

var mutableChar: Character = "a"
mutableChar = "b"

/*
 字符是值类型
 */
var char4: Character = "j"
var char5: Character = char4
char5 = "m"
print(char4) // j

/*
 字符比较
 */
let char6: Character = "\u{0061}\u{0301}"
let char7: Character = "\u{00E1}"
char6 == char7 // true
