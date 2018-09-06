# SHSelectionIndicator
Selection Indicator using an imageView.

[![Swift 4.0](https://img.shields.io/badge/Swift-4-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
[![Platform](https://img.shields.io/badge/platform-ios-blue.svg?style=flat)]

<img src="/Screenshots/Sample1.png" /> 

## Demo
<img src="/Screenshots/sample1.gif" />

## Installation
Just drag and drop the SHSelectionIcon.swift file from SHSelectionIndicator folder to your project.
#### Cocoapods - updating soon

## Usage

1. a- You can use by drag and drop an imageView in storyboard and set image class to SHSelectionIcon and set an outlet for the imageView
   b-  Or you can initialize using a variable like below:
   ```swift
   var selection = SHSelectionIcon()
   ```
2. a- You can set selection indicator icon height and width.
    for example:
    ```swift
    selection.selectionIconHeight = 30 //By default 30 for both height and width
    selection.selectionIconWidth = 30
    ```
    b- You can set selection indicator icon direction.
    for example: 
    ```swift
    selection.pointerDirection = .vertical //.vertical and .horizontal are available
    ```
    c- You can set selection indicator icon Image.
    for example:
    ```swift
    selection.image = UIImage(named: "icon")
    ```
    d- You can set selection indicator icon initial selected button
    for example:
    ```swift
    selection.initialButton(object: sampleButtons[0]) //Here sample buttons is a collection of buttons
    ```
3. Change the selection indicator icon to selected button
    call a method setSelection(object: buttonObject) inside button action with its buttonObject
    for example:
    ```swift
    selection.setSelection(object: sender) //this method is called inside action of selected button
    ```
    try using sample projeect to know the working.
    
## Requirements

* iOS 10.0+

## Example

Download the Sample project.

## Contact

Mail me @: shezadahamed95@gmail.com
