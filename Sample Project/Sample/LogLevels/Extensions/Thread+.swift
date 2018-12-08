//
//  Thread+.swift
//  Sample
//
//  Created by Rob Broadwell on 12/7/18.
//  Copyright © 2018 Noah Prado. All rights reserved.
//

import Foundation

extension Thread {
    func number() -> String {
        let array1 = self.description.components(separatedBy: ">")
        if array1.count > 1 {
            let array2 = array1[1].trimmingCharacters(in: CharacterSet(charactersIn: "{}")).components(separatedBy: ",")
            for pair in array2 {
                let array3 = pair.components(separatedBy: "=")
                if array3.count > 1 {
                    if array3[0].contains("number") {
                        return array3[1].trimmingCharacters(in: CharacterSet.whitespaces)
                    }
                }
            }
        }
        return "(unknown)"
    }
}
