//
//  CoreDataRepository.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation

protocol CoreDataRepository {
    func updateCurrency(with exchangeRate: ExchangeRate)
    func loadBookmarkCodes() -> Set<String>
    func toggleBookmark(for code: String)
    func saveCurrentView(view: String, code: String?)
}
