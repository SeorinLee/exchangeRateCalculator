//
//  ExchangeRateResult.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//


import Foundation

enum ExchangeRateResult {
    case success(ExchageRateResponseDTO)
    case failure(NetworkError)
}
