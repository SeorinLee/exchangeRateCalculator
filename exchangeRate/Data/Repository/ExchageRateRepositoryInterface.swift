//
//  ExchageRateRepositoryInterface.swift
//  exchangeRate
//
//  Created by 이서린 on 7/9/25.
//

import Foundation

import RxSwift

protocol ExchangeRateRepositoryInterface {
    func fetchExchageRateData() async throws -> ExchangeRate
    func rxFetchExchageRateData() -> Observable<ExchageRateResponseDTO>
}
