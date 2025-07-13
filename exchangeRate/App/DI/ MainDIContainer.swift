//
//   MainDIContainer.swift
//  exchangeRate
//
//  Created by 이서린 on 7/9/25.
//
import Foundation

final class DIContainer: DIContainerInterface {
    
    func makeMainViewModel() -> MainViewModel {
        let exchangeRateRepository = ExchangeRateRepositoryImpl()
        let exchangeRateUseCase = ExchangeRateUseCaseImpl(repository: exchangeRateRepository)
        
        let currencyRepository = CurrencyRepositoryImpl()
        let bookmarkUseCase = BookmarkUseCaseImpl(repository: currencyRepository)
        let currentViewSaveUseCase = CurrentViewSaveUseCaseImpl(repository: currencyRepository)
        let currencyUpdateUseCase = CurrencyUpdateUseCaseImpl(repository: currencyRepository)
        
        let viewModel = MainViewModel(exchangeRateUseCase: exchangeRateUseCase,
                                      bookmarkUseCase: bookmarkUseCase,
                                      currentViewSaveUseCase: currentViewSaveUseCase,
                                      currencyUpdateUseCase: currencyUpdateUseCase)
        return viewModel
    }
    
    func makeExchangeRateCalculatorViewModel(currencyModel: CurrencyCellModel) -> ExchangeRateCalculatorViewModel {
        let currencyRepository = CurrencyRepositoryImpl()
        let currentViewSaveUseCase = CurrentViewSaveUseCaseImpl(repository: currencyRepository)
        
        let viewModel = ExchangeRateCalculatorViewModel(currencyModel: currencyModel,
                                                        currentViewSaveUseCase: currentViewSaveUseCase)
        return viewModel
    }
}

