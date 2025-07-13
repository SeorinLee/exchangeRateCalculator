//
//  Currency+CoreDataClass.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation
import CoreData

@objc(Currency)
public class Currency: NSManagedObject {
    public static var className = "Currency"

    public enum Key {
        static let code = "code"
        static let name = "name"
        static let rate = "rate"
        static let yesterday = "yesterday"
        static let lastUpdatedDate = "lastUpdatedDate"
        static let isBookmark = "isBookmark"
    }
}
