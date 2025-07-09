//
//  ExchangeRateUseCase.swift
//  exchangeRate
//
//  Created by 이서린 on 7/9/25.
//

import Foundation

import RxSwift

final class ExchangeRateUseCase: ExchangeRateUseCaseInterface {
    
    private let repository: ExchangeRateRepositoryInterface
    
    init(repository: ExchangeRateRepositoryInterface) {
        self.repository = repository
    }
    
    func fetchExchangeRateData() async throws -> ExchangeRate {
        return try await repository.fetchExchageRateData()
    }
    
    func rxFetchExchangeRateData() -> RxSwift.Observable<ExchageRateResponseDTO> {
        return repository.rxFetchExchageRateData()
    }
}
