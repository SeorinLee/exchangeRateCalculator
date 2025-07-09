//
//  ExchangeRateRepositoryImpl.swift
//  exchangeRate
//
//  Created by 이서린 on 7/8/25.
//

import Foundation

import RxSwift

final class ExchangeRateRepository: ExchangeRateRepositoryInterface {
    private let service = ExchangeRateAPIService()
    
    func fetchExchageRateData() async throws -> ExchangeRate {
        let dto = try await service.fetchExchageRates()
        
        return dto.toDomain()
    }
    
    func rxFetchExchageRateData() -> Observable<ExchageRateResponseDTO> {
        return service.rxFetchExchageRates()
    }
}
