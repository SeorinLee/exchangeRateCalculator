//
//  ExchageRateRepositoryInterface.swift
//  exchangeRate
//
//  Created by 이서린 on 7/9/25.
//

import Foundation

import RxSwift

final class ExchangeRateRepositoryImpl: ExchangeRateRepository {
    
    private let service = ExchangeRateAPIService()
    
    func fetchExchageRateData() async throws -> ExchangeRate {
        let dto = try await service.fetchExchageRates()
        
        return dto.toDomain()
    }
    
    func rxFetchExchageRateData() -> Single<ExchangeRateResult> {
        return service.rxFetchExchageRates()
    }
}
