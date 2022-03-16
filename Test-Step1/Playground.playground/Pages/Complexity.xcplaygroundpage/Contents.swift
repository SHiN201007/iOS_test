/*:
 # Complexity

 While creating apps, we often see operations that pick specific values from multiple data sources.
 This operation might be easy to implement, but what if it processes larger data sources? How would it be different?
 `Complexity` would be one of the important metrics.

 ## Detail

 Finds common elements from two sorted arrays of random `Int`s.

 Example:
 array-A: [2,4,7,9]
 array-B: [1,3,4,5,8,9]

 result: [4,9]
 */

import Foundation

func run(inputA: [Int], inputB: [Int]) -> Set<Int> {
    // 配列の大きさを比較
    let data = compareItemSize(inputA, inputB)
    // 共通の要素を検索し返す
    return searchCommonItem(data)
}

// 配列サイズ比較格納先
private struct ComplexityData<T> {
    var maxItems: [T] = []
    var minItems: [T] = []
}

// 配列サイズ比較処理
private func compareItemSize<T>(_ itemA: [T], _ itemB: [T]) -> ComplexityData<T> {
    return ComplexityData(
        maxItems: itemA.count > itemB.count ? itemA : itemB,
        minItems: itemA.count > itemB.count ? itemB : itemA
    )
}

// 大きいデータから共通のデータを検索し格納する
private func searchCommonItem<T>(_ data: ComplexityData<T>) -> Set<T> {
    var results: Set<T> = [] // リザルト格納先
    
    data.maxItems.forEach {
        if data.minItems.contains($0) {
            results.insert($0)
        }
    }
    return results
}



PT.assertEqual(
  run(inputA: [2,4,7,9], inputB: [1,3,4,5,8,9]),
  Set<Int>([4, 9])
)

