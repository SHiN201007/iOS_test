/*:
 # Traversing trees

 A `Tree` is a data structure that is one of the popular strategies to represent data.
 It is used in object-oriented programming and often when representing view hierarchies.

 For example, UIKit and SwiftUI use tree structures internally through `UIResponder` types such as `UIView` and `UIViewController`.
 `UIView` holds its subviews and `UIViewController` holds its child view controllers.

 ## Detail

 Finds a common parent from tree
 What is the common parent for E and C?

 - A
   - B
     - C
     - D
       - E

 Input: C E -> Output: B
 Input: B E -> Output: A
 */

import Foundation

/// DO NOT modify
/// (you may create another data structure based on it)
struct Node {
  var name: String
  var children: [Node]
}


/// Nodeの展開した際の型
struct Tree {
    var name: String // name
    var hierarchy: Int // 階層
}

func run(node: Node, targetA: String, targetB: String) -> String {
    // node展開
    let tree = expansionTree(node)
    // target A,Bの階層を取得する
    guard let hierarchyA: Int = getTargetHierarchy(tree, targetA),
          let hierarchyB: Int = getTargetHierarchy(tree, targetB) else {
      return ""
    }
    // 共通の親階層を返す
    return getParentName(tree, hierarchyA, hierarchyB) ?? ""
}

// nodeを最深部まで展開する Tree型にする
private func expansionTree(_ node: Node) -> [Tree] {
    var tree = [Tree]()
    // initial tree
    tree.append(.init(name: node.name, hierarchy: 0))
    var child = node.children
    // 最深部のnodeまで展開する
    var hierarchy: Int = 1 // 階層番号
    var isLoop: Bool = true
    while isLoop {
        // 全てのchildrenを取得する
        child.forEach { node in
            tree.append(.init(name: node.name, hierarchy: hierarchy))
            child = node.children
        }
        isLoop = !child.isEmpty // 最深部まで来たら終わる
        hierarchy += 1
    }
    return tree
}

// ターゲットの階層を取得する
private func getTargetHierarchy(_ tree: [Tree], _ target: String) -> Int? {
    guard let index = tree.firstIndex(where: { $0.name == target }) else {
        return nil
    }
    return tree[index].hierarchy
}

// 親階層のnameを取得する
private func getParentName(_ tree: [Tree], _ hierarchyA: Int, _ hierarchyB: Int) -> String? {
    // 浅い階層の階層番号を取得する
    let lowHierarchy = hierarchyA < hierarchyB ? hierarchyA : hierarchyB
    // lowHierarchyのIndexを取得
    guard let targetIndex = tree.firstIndex(where: { $0.hierarchy == lowHierarchy }) else {
        return nil
    }
    // 親階層のIndexを取得 (一番最上階の場合はそのまま)
    let parentIndex = targetIndex - 1 > 0 ? targetIndex - 1 : targetIndex
    return tree[parentIndex].name
}



do {

  let tree = Node(
    name: "A",
    children: [
      .init(
        name: "B",
        children: [
          .init(
            name: "C",
            children: [
            ]
          ),
          .init(
            name: "D",
            children: [
              .init(
                name: "E",
                children: [
                ]
              )
            ]
          )
        ]
      )
    ])

  PT.assertEqual(run(node: tree, targetA: "C", targetB: "E"), "B")

}

//: [Next](@next)
