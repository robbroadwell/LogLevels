//
//  Date+.swift
//  Sample
//
//  Created by Rob Broadwell on 12/7/18.
//  Copyright © 2018 Noah Prado. All rights reserved.
//

import Foundation

extension Date {
    func logTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.setLocalizedDateFormatFromTemplate("HH:mm:ss")
        
        return dateFormatter.string(from: self)
    }
}
