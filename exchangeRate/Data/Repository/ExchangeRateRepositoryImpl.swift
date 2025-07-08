//
//  ExchangeRateRepositoryImpl.swift
//  exchangeRate
//
//  Created by 이서린 on 7/8/25.
//

import Foundation

final class ExchangeRateRepositoryImpl: FetchExchangeRateUseCase {
    private let service = ExchangeRateAPIService()
    
    func execute() async throws -> ExchangeRate {
        let dto = try await service.fetchExchageRates()
        
        return dto.toDomain()
    }
}
