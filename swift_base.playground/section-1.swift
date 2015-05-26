// Playground - noun: a place where people can play

import UIKit

//定义两个变量、圆周率 光速
let PI = 3.145926,GS = 300_000

//定义两个变量，可指定具体类型
var Name:String = "MrTom",Happy = "编程"

//在控制台输出常量及变量并拼接字符
println("圆周率是:\(PI)")
println("光的速度:\(GS)/S")

//Int 最小值及最大值
var minValue = Int.min
var maxValue = Int.max

//定Float（精度7位）、Double（精度为14位）
var FPI:Float = 3.14159261718
var DPI:Double = 3.12345678910111213

let 十进制10 = 10
let 八进制8 = 0o10
let 十六进制16 = 0x10
let 二进制2 = 0b10

//1 * e(10) 的6次方
let 一百万 = 1e6

//1 * e(10) 的负6次方（百万分之一）
let 百万分之一 = 1e-6

/**
 **  自定义类型别名
 **/
typealias New_Type = Int
var a : New_Type = 2

/**
**  Tuple 元组类型
**/
let ROW = (380,"red",true)
//println(ROW.0)
//let (价格,颜色,喜欢) = ROW
//println("价格：\(价格) - 颜色：\(颜色) - 心情\(喜欢)")
//2.如果只需要打印价格
let (价格,_,_) = ROW
println(价格)

let ROW2 = (price:380,color:"red",xqin:true)
println(ROW2.price)

/**
 ** optional (可选值)
 **/
let priceApple = "128"
//未拆包之前输出：Optional(128)
println(priceApple.toInt())
//下面使用 ！拆包 输出：128
println(priceApple.toInt()!)

let str2 = "一百元"
println(str2.toInt())

/**
 ** 间接拆包 unwarpped optional
 **/
let str3:String! = "100"
println("金额是：\(str3)")

if let temp = str3 {
   println("金额是：\(temp)")
}

/**
 **  断言 assertions [应用场景：调试中]
 **/
var age = 18
assert(age >= 18, "年龄满意条件，可以玩此游戏")

/**
 **  常规数据运算操作符
 **/
//let (a,b) = (1,3)
1 + 1
2 - 1
3 * 1
4 / 3    //整数结果为商
4.0 / 3
10 % 6

//小数取余并验证是否正确
1024 % 2.5
Int(1024 / 2.5)
409 * 2.5 + 1.5

/**
 ** for 循环
 **/
for i in (1...5){
    println(i)
}

let arrays = ["a","b","c","d"]
//半开半闭区间
for i in 0..<arrays.count {
  println("第\(i+1)个值:\(arrays[i])")
}

/**
 **  ?? 选并操作符
 **/
let ifa:String?
let ifb = "a为nil则选b"
println(ifa ?? ifb)

/**
 **  字符串判断及Unicode编码
 **/
var u_66 = "\u{11123}\u{11123}\u{11123}\u{11123}"
if u_66.isEmpty
{
    println("is empty")
}else{
    println("is not empty")
}

for char in u_66 {
  println(char)
}
//计算字符串的长度
countElements(u_66)

//字符串比较 前缀 后缀
if u_66.hasPrefix("\u{11123}")
{
    println("前缀存在。。。")
}

if(u_66.hasSuffix("\u{11123}")){
println("后缀存在。。。")
}

/**
**  字符串编码转换 (默认为Unicode)
**/
let codeStr = "钓鱼岛是中国的 \u{1F496}"

//2的8次方，不会超过255
for c in codeStr.utf8{
    print("\(c) ")
}

//2的16次方，不会超过65535
println("\n以下是utf16编码")
for c1 in codeStr.utf16{
    print("\(c1) ")
}

//2的32次方
println("\n以下是Unicode(utf32)编码")
for c1 in codeStr.unicodeScalars{
    print("\(c1.value) ")
}

/**
 ** collection type 集合类型
 **/
var cars22 = ["a","b"]
cars22.append("cc")
cars22 += ["c"]
cars22[0] = "aa"
cars22[1...2] = ["bb","cc"]
cars22.insert("ddd", atIndex: 1)
for (i,v) in enumerate(cars22)
{
    println("v:\(v) | i:\(i)")
}
