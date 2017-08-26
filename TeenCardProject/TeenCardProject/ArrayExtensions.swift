//
//  ArrayExtensions.swift
//  TeenCardProject
//
//  Created by Lucas Mendonça on 26/08/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

//
//  ArrayExtensions.swift
//  TimingTrip
//
//  Created by Lucas Mendonça on 12/15/15.
//  Copyright © 2015 TimingTripTeam. All rights reserved.
//

import Foundation

/** This class extends the array type to include other useful functions it still lacks
 */
extension Array {
    
    /** This appends all the objects from an array into another one.
     Usage: arrayA.appendAll(arrayB)
     */
    mutating func appendAll(_ array: Array<Element>) {
        for element in array {
            self.append(element)
        }
    }
    
    /** This enables removal of objects by object reference only,
     without having to necessarily pass the object's index.
     Usage: array.removeObject(object)
     */
    mutating func removeObject<U: Equatable>(_ object: U) {
        var index: Int = -1
        for (idx, objectToCompare) in self.enumerated() {
            if let to = objectToCompare as? U {
                if object == to {
                    index = idx
                }
            }
        }; if index != -1 {
            self.remove(at: index)
        }
    }
    
    /** This returns a random element from the Array
     */
    func random() -> Element? {
        if (self.count > 0) {
            return self[Int(arc4random_uniform(UInt32(self.count)))]
        }
        return nil
    }
    
    /** This enables retrieval of the last element of the array.
     Usage: Array.last()
     */
    var last: Element {
        return self[self.endIndex - 1]
    }
}
