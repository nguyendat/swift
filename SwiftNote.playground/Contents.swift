/************************************************************************************
 * Outline: All in one note while learning Swift
 * Author:  nguyendat
 * Created: 20 Sep, 2016
 * Resource: Matt Neuburd, Apple Document, NSHipster, objc.io, Mikeash's Friday Q&A
 ************************************************************************************/

import UIKit

//1. Everything is object even primitive type, we can send message to it:
let result = 1.advancedBy(8)


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

//4. Variable



