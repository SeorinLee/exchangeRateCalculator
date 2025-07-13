//
//  ExchangeRateUseCaseImpl.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation

import RxSwift


final class ExchangeRateUseCaseImpl: ExchangeRateUseCase {
    
    private let repository: ExchangeRateRepository
    
    init(repository: ExchangeRateRepository) {
        self.repository = repository
    }
    
    func fetchExchangeRateData() async throws -> ExchangeRate {
        return try await repository.fetchExchageRateData()
    }
    
    func rxFetchExchangeRateData() -> Observable<ExchageRateResponseDTO> {
        return repository.rxFetchExchangeRateData()
            .asObservable()
            .flatMap { result -> Observable<ExchageRateResponseDTO> in
                switch result {
                case .success(let dto):
                    return Observable.just(dto)
                case .failure(let error):
                    return Observable.error(error)
                }
            }
    }
}


