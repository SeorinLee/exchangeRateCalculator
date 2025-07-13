//
//  ExchangeRateRepository.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//


import Foundation

import RxSwift

protocol ExchangeRateRepository {
    func fetchExchageRateData() async throws -> ExchangeRate
    func rxFetchExchageRateData() -> Single<ExchangeRateResult>
}
