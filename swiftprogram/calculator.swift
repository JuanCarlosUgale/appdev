import SwiftUI 
struct ContentView: View { 
var body: some View { 
let member1: String = "Recto, Marc Lorenz" 
let member2: String = "Salvador, Matt Wilfred" 
let member3: String = "Sobremonte, Erika" 
let member4: String = "Velasco, Herod" 
let member5: String = "Ugale, Juan Carlos" 
let member6: String = "Yabut, Errol" 
ZStack{ 
Image("404bg").resizable().aspectRatio(contentMode: .fill) VStack { 
Image("404logo") 
.resizable() 
.aspectRatio(contentMode: .fit) 
Text(member1).foregroundColor(.purple).font(.headline) Text(member2).foregroundColor(.purple).font(.headline) Text(member3).foregroundColor(.purple).font(.headline) Text(member4).foregroundColor(.purple).font(.headline) Text(member5).foregroundColor(.purple).font(.headline) Text(member6).foregroundColor(.purple).font(.headline) } 
} 
} 
} 
struct ContentView_Previews: PreviewProvider { 
static var previews: some View { 
ContentView() 
} 
} 
import UIKit
class ViewController: UIViewController { 
@IBOutlet weak var calculatorWorkings: UILabel! @IBOutlet weak var calculatorResults: UILabel! 
var equation:String = "" 
override func viewDidLoad() { 
super.viewDidLoad() 
// Do any additional setup after loading the view. } 
func clearAll(){ 
equation = "" 
calculatorWorkings.text = "" 
calculatorResults.text = "" 
} 
func addToEquation(value: String){ 
equation = equation + value 
calculatorWorkings.text = equation; 
} 
@IBAction func reset(_ sender: Any) { 
clearAll() 
} 
@IBAction func del(_ sender: Any) { 
if (!equation.isEmpty){ 
equation.removeLast() 
calculatorWorkings.text = equation 
} 
} 
@IBAction func percentage(_ sender: Any) { addToEquation(value: "%") 
} 
@IBAction func divide(_ sender: Any) { 
addToEquation(value: "/") 
}
@IBAction func seven(_ sender: Any) { addToEquation(value: "7") 
} 
@IBAction func eight(_ sender: Any) { addToEquation(value: "8") 
} 
@IBAction func nine(_ sender: Any) { addToEquation(value: "9") 
} 
@IBAction func multiply(_ sender: Any) { addToEquation(value: "*") 
} 
@IBAction func four(_ sender: Any) { addToEquation(value: "4") 
} 
@IBAction func five(_ sender: Any) { addToEquation(value: "5") 
} 
@IBAction func six(_ sender: Any) { addToEquation(value: "6") 
} 
@IBAction func minus(_ sender: Any) { addToEquation(value: "-") 
} 
@IBAction func one(_ sender: Any) { addToEquation(value: "1") 
} 
@IBAction func two(_ sender: Any) { addToEquation(value: "2") 
} 
@IBAction func three(_ sender: Any) { addToEquation(value: "3") 
}
@IBAction func add(_ sender: Any) { 
addToEquation(value: "+") 
} 
@IBAction func decimal(_ sender: Any) { 
addToEquation(value: ".") 
} 
@IBAction func zero(_ sender: Any) { 
addToEquation(value: "0") 
} 
@IBAction func equals(_ sender: Any) { 
if(validInput()){ 
let checkedWorkingForPercentage = equation.replacingOccurrences(of: "%", with: "*0.01") 
let expression = NSExpression(format: equation) 
let result = expression.expressionValue(with: nil, context: nil) as! Double let resultString = formatResult(result: result) 
calculatorResults.text = resultString 
} 
else 
{ 
let alert = UIAlertController( 
title: "Invalid Input", 
message: "Error 404!", 
preferredStyle: .alert) 
alert.addAction(UIAlertAction(title:"Okay", style: .default)) 
self.present(alert, animated: true, completion: nil); 
} 
} 
func validInput() -> Bool 
{ 
var count = 0 
var funcCharIndexes = [Int]() 
for char in equation 
{
if(specialCharacter(char: char)) 
{ 
funcCharIndexes.append(count) 
} 
count += 1; 
} 
var previous: Int = -1 
for index in funcCharIndexes{ 
if(index == 0) 
{ 
return false 
} 
if(index == equation.count - 1) 
{ 
return false 
} 
if(previous != -1) 
{ 
if (index - previous == 1){ 
return false 
} 
} 
} 
return true; 
} 
func specialCharacter(char: Character) -> Bool { 
if (char == "*"){ 
return true 
} 
if (char == "/"){ 
return true 
} 
if (char == "+"){ 
return true 
} 
if (char == "-"){ 
return true 
} 
return false
} 
func formatResult(result: Double) -> String{ 
if (result.truncatingRemainder(dividingBy: 1) == 0){ 
return String(format: "%.0f", result) 
} else { 
return String(format: "%.2f", result) 
} 
} 
} 
