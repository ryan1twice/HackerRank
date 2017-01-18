/**
    Day 6: Let's Review
    https://www.hackerrank.com/challenges/30-review-loop

**/
func splitStr(_ testStr: String) -> String {
    var evenStr = ""
    var oddStr = ""
    var count = 0
    for element in testStr.characters {
        if count%2 == 0{
            evenStr.append(String(element))
        } else {
            oddStr.append(String(element))
        }
        count += 1
    }
    return evenStr + " " + oddStr
}
var testCases = Int(readLine()!)!
for testStrs in 1...testCases {
    print(splitStr(String(readLine()!)!))
}

