//
//  FetchExchangeRateUseCase.swift
//  exchangeRate
//
//  Created by 이서린 on 7/8/25.
//

import Foundation

protocol FetchExchangeRateUseCase {
    func execute() async throws -> ExchangeRate
}
