//
//  Extension+String.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation

extension String {
    func toDateOnlyString() -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "EEE, dd MM yyyy HH:mm:ss Z"
        inputFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "yyyy-MM-dd"
        
        if let date = inputFormatter.date(from: self) {
            return outputFormatter.string(from: date)
        }
        return self
    }
}
