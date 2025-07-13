//
//  CurrencyUpdateUseCaseImpl.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation

final class CurrencyUpdateUseCaseImpl: CurrencyUpdateUseCase {
    private let repository: CoreDataRepository
    
    init(repository: CoreDataRepository) {
        self.repository = repository
    }

    func updateCurrencyData(with exchangeRate: ExchangeRate) {
        repository.updateCurrency(with: exchangeRate)
    }
}
