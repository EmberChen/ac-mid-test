//: Playground - noun: a place where people can play

import UIKit

func sortArray(array1:[Int], array2:[Int]) -> [Int] {
    let sumArray = array1 + array2
    var rmRepeatNumberArray = Array(Set(sumArray))
    
    for i in 0..<rmRepeatNumberArray.count{
        for j in 0..<rmRepeatNumberArray.count - i - 1{
            var tmp = 0
            if rmRepeatNumberArray[j] > rmRepeatNumberArray[j+1]{
                tmp = rmRepeatNumberArray[j]
                rmRepeatNumberArray[j] = rmRepeatNumberArray[j+1]
                rmRepeatNumberArray[j+1] = tmp
            }
        }
    }
    return rmRepeatNumberArray
}

sortArray(array1: [1,5,3], array2: [2,4,3])
//[5,2,3,1,4]



