//
//  CurrencyCellModel.swift
//  exchangeRate
//
//  Created by 이서린 on 7/8/25.
//

import Foundation

struct CurrencyCellModel {
    let code: String
    let name: String
    let rate: String
    let isBookmarked: Bool
    let status: CurrencyStatus?
}
