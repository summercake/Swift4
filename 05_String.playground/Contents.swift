//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
 字符串
 1. 在程序中, 文本内容用字符串来表示
 2. 字符串由一系列的字符组成, 例如 "Hello world", 字符串又由多个字 符组成
 3. 字符串的表示方式有两种:
     1.) 直接由双引号引起来, "" 表示空字符串
     2.) 调用 String 的构造器 init?(_description: String), String() 表示一个空字符串
 4. 字符串变量和常量在使用前必须先声明并初始化, 包括
     1.) 给变量或常量起一个名字
     2.) 指定变量或常量的数据类型为 String
     3.) 给变量或常量赋予一个初始值
 5. 多行字符串
 6. 字符串也是值类型
 7. 如果想要统计字符串中的字符个数, 可以访问字符串的属性 characters 的属性 count
 8. 访问属性 count 时, 系统会遍历字符串的所有 Unicode Scalar
 9. 当比较两个字符串时, 系统会分别遍历这两个字符串的 Unicode Scalar
 10. 比较字符串的运算符一共有六个
     1.) == 用于比较两个字符串是否含有相同的字符序列, 也就是说, 比较两个字符串是否包含相同的文本
     2.) != 用于比较两个字符串是否包含不同的字符串序列
     3.) > 用于比较运算符右边的字符串是否是左边字符串的子串, 并且两个字符串不相等
     4.) >= 用于比较运算符右边的字符串是否是左边字符串的子串, 并且两个字符串不相等; 或两个字符串相等
     5.) < 用于比较运算符左边的字符串是否是右边字符串的子串, 并且两个字符串不相等
     6.) <= 用于比较运算符左边的字符串是否是右边字符串的子串, 并且两个字符串不相等; 或两个字符串相等
 11. 比较字符串的方法有两个
     1.) hasPrefix(_ prefix: String) -> Bool
     2.) hasSuffix(_ suffix: String) -> Bool
 12. 如果要遍历字符串, 可以通过两种方式
     1.) 把字符串中的字符作为循环变量
     2.) 把字符串中字符的索引作为循环变量
 13. 当一个Unicode字符串被写入文本文件或存储设备时, 该字符串的Unicode Scalar会被编码为Unicode兼容的格式, 主要三种
     1.) UTF-8 字符串的属性 utf8 返回其 UTF-8 编码, 返回值的类型是 String.UTF8View, 返回值是一个UInt8 类型的值的集合, 该集合中每个元素都是一个 0 ~ 255 之间的整数, 占 1 个字节
     2.) UTF-16 字符串的属性 utf16 返回其 UTF-16 编码, 返回值的类型是 String.UTF16View, 返回值是一个UInt16 类型的值的集合, 该集合中每个元素都是一个 0 ~ 65535 之间的整数, 占 2 个字节
     2.) UTF-32 (Unicode Scalar) 字符串的属性 unicodeScalars 返回其 Unicode Scalar 编码, 返回值的类型是 String.UnicodeScalarView, unicodeScalar 类型的值的集合, 对于集合的每个元素, 其属性value返回一个 21 位的 Unicode 编码, 并用 UInt32 的值表示, 该集合中每个元素都是一个 0 ~ 4294967295 之间的整数, 占 4 个字节
 14. 字符串中字符的索引类型不能是整数类型, 因为: 不同的字符占用的内存存储空间是不同的, 对一个给定的整数类型索引, Swift 并不能确定其对应的字符, 必须遍历字符串中的所有 Unicode Scalar 才能确定每个字符的位置
 15. 字符串中字符的索引类型是 String.Index, String.Index 是 String.CharacterView.Index 的别名, 查看String的源代码如下:
 public typealias Index = String.CharacterView.Index
 16. 如果想要取得字符串中相关字符串的索引, 可以访问如下属性:
     1.) startIndex
     2.) endIndex
     3.) index(before i: String.Index) -> String.Index
     4.) index(after i: String.Index) -> String.Index
     5.) index(_ i: String.Index, offsetBy n: String.IndexDistance) -> String.Index
         a.) 当 n 为正数时, 该方法返回参数 i 指定的索引的后面 n 个位置的索引
         b.) 当 n 为负数时, 该方法返回参数 i 指定的索引的前面 n 个位置的索引
 17. 如果想要取得字符串中的相关字符, 可以使用一下方法:
     1.) 使用下标语法和字符索引, 当字符索引越界时, 会导致运行时错误
     2.) 通过访问字符串的属性 characters 的相关属性和方法
 18. 不能使用下标语语法修改字符串中索引的字符值, 否则会导致编译错误
 19. 如果想要增加字符串中的字符, 可以调用一下方法
     1.) append(_ c: Character) 该方法用于在字符串的末尾追加参数c指定的字符
     2.) append(_ s: String ) 该方法用于在字符串的末尾追加参数s指定的字符串
     3.) insert(_ newElement: Character, at i: String.Index) 该方法用于在字符串中参数 at 指定的位置插入参数 newElement 指定的字符
     4.) insert<S>(contentOf newElement: S, at i: String.Index) where S: Collection 该方法用于在字符串中参数 at 指定的位置插入参数 newElement 指定的 Collection 类型
     5.) 运算符 + 也可以用于在字符串的末尾追加另一个字符串, 运算之后, 原字符串保持不变
 20. 如果想要删除字符串中指定索引的字符, 可以调用以下方法:
     1.) remove(at i: String.Index) -> Character 该方法用于删除字符串中参数 i 指定索引的字符, 该方法返回的是被删除的字符
     2.) removeSubrange(_ bounds: Range<String.Index>) 该方法用于删除字符串中参数 bounds 指定索引的字符
 21. 如果想要将字符串中的所有字母在大写和小写之间转换, 可以调用如下两个方法:
     1.) uppercased() -> String 该方法的返回值为转换后的字符串
     2.) lowercased() -> String 该方法的返回值为转换后的字符串
 22. 类型转换
     1.) 字符串与整型或浮点型可以相互转换
     2.) 字符串可以转为数组
 23. 字符串插值 "\(占位符)", 其中占位符可以以下类型:
     1.) 变量
     2.) 常量
     3.) 表达式
     4.) 字面量(直接量)
 */
"jack" // String
String("mike")
let str1 = "abcdfeg"
let str2: String = "abcdfeg"
print("""
This is first line,
This is second line,
This is third line,
""")
print("""

This is first line,
This is second line,
This is third line,

""")
// 这个多行字符串只显示在一行里
print("""
This is first line,\
This is second line,\
This is third line,
""")
print("""
        This is first line,
                This is second line,
                        This is third line,
        """)
var mutableStr = "abcd"
mutableStr = "efgh"

// 字符串是值类型
var str3 = mutableStr
str3 = "zzz"
print(mutableStr) // efgh

// 字符串长度
str3.characters.count // 4
"\u{00E1}".characters.count // 1
"\u{0061}\u{0301}".characters.count // 1
("dcba" + "\u{0301}").characters.count // 4

// 字符串的比较
let word1 = "\u{0061}\u{0301}abc"
let word2 = "\u{00E1}abc"
let word3 = "\u{00E1}abcd"
let word4 = "d\u{00E1}abc"
word1 == word2 // true
word2 != word3 // true
word3 != word4 // true
word3 > word1 // true
word3 >= word1 // true >
word2 >= word1 // true =
word1 < word3 // true
word1 < word4 // true
word1 <= word3 // true
word1 <= word2 // true
word3.hasPrefix(word1) // true
word4.hasSuffix(word1) // true

// 字符串的遍历1
let foreachStr = "abcd"
let strs = foreachStr.characters
strs.forEach{ print($0) }
for s in strs{
    print(s)
}

// 字符串的遍历2.1
let indices = foreachStr.characters.indices
indices.forEach{ print(strs[$0]) }
for index1 in indices{
    print(strs[index1])
}

// 字符串的遍历2.2
var index2 = strs.startIndex
while index2 != strs.endIndex{
    print(strs[index2])
    index2 = strs.index(after: index2)
}

// Unicode 编码格式
let uStr = "Dog!!"
for codeUnit in uStr.utf8{
    print("\(codeUnit)", terminator: "")
}
for codeUnit in uStr.utf16{
    print("\(codeUnit)", terminator: "")
}
uStr.unicodeScalars

// 字符串的索引与查找
var indexStr = "adsfjsdanboisdganv"
indexStr[indexStr.startIndex]
indexStr[indexStr.index(before: indexStr.endIndex)]
indexStr[indexStr.index(after: indexStr.startIndex)]
indexStr[indexStr.index(indexStr.startIndex, offsetBy: 3)]
indexStr[indexStr.index(indexStr.endIndex, offsetBy: -2)]
indexStr[indexStr.index(after: indexStr.startIndex)...indexStr.index(indexStr.endIndex, offsetBy: -2)]

let indexChars = indexStr.characters
indexChars.first // 字符串中第一个字符
indexChars.last // 字符串中最后一个字符
indexChars.index(of: Character("n")) // 获取指定字符的索引
indexChars.index(of: Character("z")) // nil
indexChars.contains(Character("f")) // true 判断字符串中是否包含每个字符
indexChars.contains(Character("z")) // false

// 字符串字符的修改
// indexStr[indexStr.index(after: indexStr.startIndex)] // 报错

// 追加字符串的内容
indexStr.append(Character("d")) // 追加字符
indexStr.append("dasfsad") // 追加字符串
indexStr.insert(Character("e"), at: indexStr.index(after: indexStr.startIndex)) // 为指定的位置插入字符
indexStr.insert(contentsOf: "esadf".characters, at: indexStr.startIndex) // 为指定的位置插入字符集合

indexStr += "sadgfsad"
var indexStr2 = "sdagfsad"
indexStr + indexStr2

// 删除字符串中指定索引的字符
indexStr.remove(at: indexStr.index(after: indexStr.startIndex)) // 删除字符
indexStr.removeSubrange(indexStr.index(indexStr.startIndex, offsetBy: 2)..<indexStr.endIndex) // 删除字符集合

// 大小写转换
var upperStr = indexStr.uppercased()
var lowerStr = upperStr.lowercased()

// 类型转换
String(63) // Int 转换为 String
String(63, radix: 16) // 转换为16进制, 然后再转换为String
Int("63") // String 转换为 Int
Int("63", radix: 16) // String 转换为 Int, 然后再转换为十六进制
Float("1.8")
Double("1.8")
let strArray = Array(indexStr.characters) // String to Array
String(strArray) // Array to String
for (index, char) in strArray.enumerated(){
    print("the value of \(index) index in strArray is \(char)")
}
String(strArray.sorted()) // 先排序, 再转换为 String

// 字符串插值
var age = 18
var name = "jack"
print("age : " + String(age) + ", name: " + name) // 通过 + 运算符, 进行字符串拼接, 然后再打印
print("age : \(age), name : \(name)") // 通过字符串插值的方式, 进行打印
