//
//   ExchangeRateUseCaseInterface.swift
//  exchangeRate
//
//  Created by 이서린 on 7/9/25.
//

import Foundation

import RxSwift

protocol ExchangeRateUseCase {
    func fetchExchangeRateData() async throws -> ExchangeRate
    func rxFetchExchangeRateData() -> Observable<ExchageRateResponseDTO>
}
