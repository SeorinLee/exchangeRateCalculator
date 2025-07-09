//
//   MainDIContainer.swift
//  exchangeRate
//
//  Created by 이서린 on 7/9/25.
//

import Foundation

final class MainDIContainer: MainDIContainerInterface {
    func makeMainViewModel() -> MainViewModel {
        let repository = ExchangeRateRepository()
        let useCase = ExchangeRateUseCase(repository: repository)
        let viewModel = MainViewModel(useCase: useCase)
        return viewModel
    }
}
