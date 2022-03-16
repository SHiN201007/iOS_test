# Recreating UI

This Xcode project template is for creating your own UI component by recreating an UIKit standard UI component.

## Detail

Let's try to make your own UI component based on standard UI components.  
**Recreating** is one of the most effective ways to improve your own skills.

This theme looks kind of simple, but it's deep. You will have to care about lots of conditions to make your component behave correctly.

## Start to development

For your theme, pick one UI component from UIKit's components. For instance, UIButton or UISwitch, etc.

Start making it from scratch and make sure it behaves the same as the original.

Take a look at the details of your chosen component.
It has a lot of behaviors, appearances, and functions.

To get to know the details, try many times to interact with it by touching, swiping, long-pressing and more.
Also, it may have options that activate when some accessibility options are enabled.

You may not be able to implement all of the functions by the time limit.
Focus on the features that you are curious about. Other things can be dropped this time.

From this test, you would get tons of experience for UI development, since implementing your component will require you to think of structure and approaches.

**Writing code**

This project has 2 targets:
- RecreatingUI.framework - a place to create your own component
- RecreatingUI-Demo.app - a place to show the component

**Requirements in development**

- Swift 5.5 +
- Xcode 13.2.1 +
- Target platform: iPhone
- Using UIKit (not allowed using SwiftUI)
- No InterfaceBuidler (Storyboard, XIB)
  - Try to create UI layout programmatically
  - It should be responsive.

**Allowed actions**

- Creating another module
- Installing external tools(libraries) for speeding up development - from any tools (CocoaPods, SwiftPM, or directly)
  - Pre-installed [MondrianLayout](https://github.com/muukii/MondrianLayout) to get faster laying out UI.
