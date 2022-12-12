import Foundation
import UIKit

class ViewController2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        //Default methods calling
        var dailyStatement = greet("Rick", day: "Tuesday")
        println(dailyStatement)

        //First parameter is also an external parameter
        var dailyStatement2 = greet2(name:"John", day: "Sunday")
        println(dailyStatement2)
    }

    //Default: First Parameter is the local parameter, the rest are external parameters
    func greet (name: String, day: String) -> String {
        return "Hello \(name), today is \(day)."
    }

    //Use Hash symbol to make the First parameter as external parameter
    func greet2 (#name: String, day: String) -> String {
        return "Hello \(name), today is \(day)."
    }
}

