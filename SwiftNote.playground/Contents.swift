/************************************************************************************
 * Outline: All in one note while learning Swift
 * Author:  nguyendat
 * Created: 20 Sep, 2016
 * Resource: Matt Neuburd, Apple Document, NSHipster, objc.io, Mikeash's Friday Q&A
 ************************************************************************************/

import UIKit

//Cocoa
//1. Cocoa writen in C and Objective C

//SWIFT
//1. Everything is object even primitive type, we can send message to it:
let result = 1.advanced(by: 8)


//2. We can also extends privitive object type like this
extension Int {
    func speakMyValue() {
        print("My value is \(self)")
    }
}

result.speakMyValue()

//3. There are 3 object type in Swift: class, struct and enum
//3.1 In example 1: 1 is struct type, that why we can send message to 1
//3.2 in Objective-C Struct and Enum is not object

//4. Variable: name of object : name, type, value, size, scope, lifetime...
let CONSTANT = 1
var mName = "nguyendat"

//5. Function: execute code: name, param, return, scope, lifetime
//Execute code at the top level of main.swift will run when program run

//6. Structure of swift file
// + import                       import UIKit
// + variable declaration         var name = "nguyendat"
// + function declaration         func sayName() {print("Name:\(nguyendat)")}
// + Object type declaration      class AClass {}
//                                struct AStruct {}
//                                enum AEnum {}


//7. Function
func sum(first: Int, with number: Int) -> Int {
    return first + number;
}

sum(first:12, with: 8)

//7.1 A function can externalize name of parameter because of:
// + Clarity purpose of param
// + Distinguish with other 
// + Interface with Objective-C and Cocoa where parameter almost have externalize

// 7.2 Except first parameter, externalized name automatic by default with same name with local
// The reason why first param is except because it have meaning in function name by itself
func doSomething(firstName: String, lastName: String) -> String {
    return "My name is:\(firstName) \(lastName)"
}

let message = doSomething(firstName: "Dat", lastName: "Nguyen")

//7.3 Overload: Same name even externalized but difference signature

//7.4 Default parameter value
func doWork(value: String, times: Int=1) {
    for _ in 0...times {
        print(value)
    }
}
//We can omit second param because it already have default value
doWork(value: "Antonio")
doWork(value: "Dat", times: 10)

//7.5 Variadic parameter
func variadicFunc(statement: String ..., times: Int) {
    for s in statement {
        print("\(s)")
    }
}

//7.5 Irgnore parameter
func ignoreParamFunc(name: String, age _: Int) {
    
}

//7.6 Modifier parameter
func paramFuncConst(IamLocalVariableAndImplicitConstant: String) {
    
}

func varParamFuncInside(varParam: String) {
    //varParam = "Antonio" //Not affect to outside
}

//7.6 Change value of param pass to function
func varParamOutside(varParam: inout String) {
    varParam = "Antonio"
}
var name="Dat"
varParamOutside(varParam: &name)

//7.7 UnsafeMutablePointer same as inout
func CGRectDevide(rect: CGRect,
                  _ slide: UnsafeMutablePointer<CGRect>,
                    _ reminder: UnsafeMutablePointer<CGRect>,
                      _ amount: CGFloat,
                      _ edge: CGRectEdge) {
    
}


//var arrow = CGRect
//var body = CGRect
//CGRectDevide(&arrow, &body, Arrow.ARHEIGHT, .MinYEdge)


