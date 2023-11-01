// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

import ComposableArchitecture

public func appendOrRemoveFromArray<T: Equatable>(_ inputArray: inout IdentifiedArrayOf<T>, _ element: T) -> IdentifiedArrayOf<T> {
    if let index = inputArray.firstIndex(where: { $0.id == element.id }) {
        print("element exists so remove call")
        inputArray.remove(at: index)
    } else {
        print("element doesnt exist so append")
        inputArray.append(element)
    }
    return inputArray
}
