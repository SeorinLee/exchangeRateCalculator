//
//   MainDIContainerInterface.swift
//  exchangeRate
//
//  Created by 이서린 on 7/9/25.
//

import Foundation

protocol DIContainerInterface {
    func makeMainViewModel() -> MainViewModel
    func makeExchangeRateCalculatorViewModel(currencyModel: CurrencyCellModel) -> ExchangeRateCalculatorViewModel
}

