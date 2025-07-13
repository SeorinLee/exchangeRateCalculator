//
//  CurrencyUpdateUseCase.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//


import Foundation

protocol CurrencyUpdateUseCase {
    func updateCurrencyData(with exchangeRate: ExchangeRate)
}
