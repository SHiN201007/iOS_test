//: [Previous](@previous)

/*:
 # Introduction

 This playground is a small test where you can show us your programming sense and potential.

 ## How to answer

 Each page has `run` function you should implement with your own code to solve the case.
 In the bottom of page, you can find `PT.assert` expressions. Those are simple assertion functions.
 If your implementation is correct, that expression prints `✅` in right side bar. Otherwise, it prints `❌`.

 💡 Feel free to add more assertions to add your own validations.

 ## Thinking in code

 This test lets you show us your programming sense and potential rather than your current skill level.
 Try focusing on the internal implementation rather than just returning the correct results.
 - performance (complexity)
 - readability
 - maintainability

 */

/// Example
func run(input: Int) -> Int {
  return input + 1
}

/// This assertion would pass
PT.assertEqual(run(input: 1), 2)

/// This assertion would fail
PT.assertEqual(run(input: 1), 3)

//: [🚀 Start](@next)
