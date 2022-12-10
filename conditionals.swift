Conditionals 
func checkUser(input: Int) -> String{
var choice = true
var input = 0

print("Are you a [1]student or a [2]professor? ")
if let ch = Int(readLine()!) {
    input = ch
    
    if(input == 1) {
        return “Student”
    }
    else if(input == 2) {
        return “Professor”
    }
    else {
        return “Invalid input”
    }
}
}

