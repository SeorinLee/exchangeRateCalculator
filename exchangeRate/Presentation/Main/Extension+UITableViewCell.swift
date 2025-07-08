//
//  Extension+UITableViewCell.swift
//  exchangeRate
//
//  Created by 이서린 on 7/8/25.
//

import UIKit

extension UITableViewCell: ReusableProtocol {
    static var identifier: String {
        String(describing: self)
    }
}
