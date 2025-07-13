//
//  SaveView+CoreDataProperties.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation
import CoreData


extension SaveView {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SaveView> {
        return NSFetchRequest<SaveView>(entityName: "SaveView")
    }

    @NSManaged public var isLastView: String?
    @NSManaged public var code: String?

}

extension SaveView : Identifiable {

}
