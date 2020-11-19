import UIKit

func isEven(_ number: Int) -> Bool{
    if (number % 2 == 0) {
        return true;
    }
    else
    {return false}
}

func isDivisible3 (_ number: Int) -> Bool{
    if (number % 3 == 0) {
        return true;
    }
    else
    {return false}
}

var array = [Int](1...100)

//for i in array {
    array.removeAll(where:{(isEven($0)||(!isDivisible3($0)))})
    //if (isEven(i)&&(!isDivisible3(i))){
    //    array.remove(at: array.)
    //    //i-=1
    //}
//}
print(array)
