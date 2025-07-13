//
//  ExchangeRateUseCaseImpl.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation

import RxSwift

final class ExchangeRateUseCaseImpl: ExchangeRateUseCase {
    func rxFetchExchangeRateData() -> RxSwift.Observable<ExchageRateResponseDTO> {
        <#code#>
    }
    
    
    private let repository: ExchangeRateRepository
    
    init(repository: ExchangeRateRepository) {
        self.repository = repository
    }
    
    func fetchExchangeRateData() async throws -> ExchangeRate {
        return try await repository.fetchExchageRateData()
    }
    
    func rxFetchExchangeRateData() -> Single<ExchangeRateResult> {
        return repository.rxFetchExchageRateData()
    }
}
