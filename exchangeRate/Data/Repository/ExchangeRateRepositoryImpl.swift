//
//  ExchangeRateRepositoryImpl.swift
//  exchangeRate
//
//  Created by 이서린 on 7/8/25.
//

import Foundation

import RxSwift

final class ExchangeRateRepositoryImpl: ExchangeRateRepository {
    func rxFetchExchangeRateData() -> RxSwift.Single<ExchangeRateResult> {
        return service.rxFetchExchageRates()
    }
    
    
    private let service = ExchangeRateAPIService()
    
    func fetchExchageRateData() async throws -> ExchangeRate {
        let dto = try await service.fetchExchageRates()
        
        return dto.toDomain()
    }
    
}
