/*:
 # Processing collections

 Processing collections is one of the important tasks when creating applications.
 Lists are often displayed in many screens in the app and those lists are built by processing collections.
 
 ## Detail

 This function processes an array of integers with *n* elements.
 The returned output is an array of strings.

 For the first and last elements, add `"top-"` and `"botttom-"` respectively as their prefix.
 For the rest of the elements, add `"middle-"` as the prefix.

 Example:

 ```
 input: [0, 1, 2, 3, 4, 5]
 output: ["top-0", "middle-1", "middle-2", "middle-3", "middle-4", "bottom-5"]
 ```
 */

import Foundation

func run(input: [Int]) -> [String] {
    // 一度全て"middle-x"にする
    var output = input.map { "middle-\($0)" }
    // 一番前をtopに変える
    output[firstIndex(output)] = "top-\(input[firstIndex(input)])"
    // 一番後ろをbottomに変える
    output[endIndex(output)] = "bottom-\(input[endIndex(input)])"
    
    return output
}

/// データの最初のインデックスを返す
private func firstIndex<T>(_ items: [T]) -> Int {
    return items.startIndex
}

/// データの最後のインデックスを返す
private func endIndex<T>(_ items: [T]) -> Int {
    return items.endIndex - 1
}

PT.assertEqual(
  run(input: [0, 1, 2, 3, 4, 5]),
  ["top-0", "middle-1", "middle-2", "middle-3", "middle-4", "bottom-5"]
)

PT.assertEqual(
  run(input: [0, 1, 2]),
  ["top-0", "middle-1", "bottom-2"]
)

PT.assertEqual(
  run(input: [0, 1]),
  ["top-0", "bottom-1"]
)

//: [Next](@next)
