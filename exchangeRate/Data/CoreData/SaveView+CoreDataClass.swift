//
//  SaveView+CoreDataClass.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation
import CoreData

@objc(SaveView)
public class SaveView: NSManagedObject {
    public static var className = "SaveView"

    public enum Key {
        static let code = "code"
        static let isLastView = "isLastView"
    }
}
