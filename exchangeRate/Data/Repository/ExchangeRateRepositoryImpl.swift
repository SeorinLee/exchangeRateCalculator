//
//  ExchangeRateRepositoryImpl.swift
//  exchangeRate
//
//  Created by 이서린 on 7/8/25.
//

import Foundation

final class CurrencyRepositoryImpl: CoreDataRepository {
    private let coreDataService = CoreDataService.shared
    
    func updateCurrency(with exchangeRate: ExchangeRate) {
        coreDataService.updateCurrency(with: exchangeRate)
    }
    
    func loadBookmarkCodes() -> Set<String> {
        coreDataService.loadBookmarkedCodes()
    }
    
    func toggleBookmark(for code: String) {
        coreDataService.toggleBookmark(for: code)
    }
    
    func saveCurrentView(view: String, code: String?) {
        coreDataService.saveCurrentView(view: view, code: code)
    }
}
