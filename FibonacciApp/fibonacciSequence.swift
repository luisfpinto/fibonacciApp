//
//  fibonacciSequence.swift
//  FibonacciApp
//
//  Created by Luis Pinto on 26/02/2019.
//  Copyright © 2019 Luis Pinto. All rights reserved.
//

import Foundation

class FibonacciSequence {
    var includesZero : Bool
    var numberOfItemsInSequence: Int?
    var maxNumber: Int?
    var values: [Int] = []
    init (includesZero: Bool, maxNumber: Int) {
        self.includesZero = includesZero
        self.maxNumber = maxNumber
        self.values = createFibonacciSequence()
    }
    init (includesZero: Bool, numberOfItemsInSequence: Int) {
        self.includesZero = includesZero
        self.numberOfItemsInSequence = numberOfItemsInSequence
        self.values = createFibonacciSequence()
    }
    
    func createFibonacciSequence() -> [Int] {
        var array: [Int] = []
        var index: Int = 0
        var min = true
        if(self.includesZero) {
            array.append(0)
            index = 1
        }
        if let maximumNumber = self.maxNumber {
            while min {
                if(index < 2) {
                    array.append(1)
                }
                else {
                    array.append(array[array.count-2] + array.last!)
                }
                if(array.last! > maximumNumber) {
                    min = false
                    index=index+1
                }
            }
        } else if let numberOfElements = self.numberOfItemsInSequence {
            if(numberOfElements == 0 ) {
                return []
            }
            while index < numberOfElements {
                if(index < 2) {
                    array.append(1)
                }
                else {
                    array.append(array[array.count-2] + array.last!)
                }
                index=index+1
            }
        }
        return array
    }
}

