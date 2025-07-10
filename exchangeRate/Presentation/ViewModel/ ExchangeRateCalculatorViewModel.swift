//
//   ExchangeRateCalculatorViewModel.swift
//  exchangeRate
//
//  Created by 이서린 on 7/10/25.
//

import Foundation

import RxSwift
import RxCocoa

final class ExchangeRateCalculatorViewModel {
    
    struct Input {
        let currencyModel: BehaviorSubject<CurrencyCellModel>
        let currencyValue: ControlProperty<String>
    }
    
    struct Output {
        let exchageValue: PublishRelay<String>
    }
    
    private let disposeBag = DisposeBag()
    
    func transform(input: Input) -> Output {
        let exchangeValue = PublishRelay<String>()
        
        Observable.combineLatest(input.currencyModel, input.currencyValue)
            .map { (currencyModel, currencyValue) in
                return String((Double(currencyModel.rate) ?? 0) * (Double(currencyValue) ?? 0))
            }
            .bind(to: exchangeValue)
            .disposed(by: disposeBag)
        
        return Output(exchageValue: exchangeValue)
    }
}
