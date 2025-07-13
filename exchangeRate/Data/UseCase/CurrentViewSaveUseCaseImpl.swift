//
//  CurrentViewSaveUseCaseImpl.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation

final class CurrentViewSaveUseCaseImpl: CurrentViewSaveUseCase {
    private let repository: CoreDataRepository
    
    init(repository: CoreDataRepository) {
        self.repository = repository
    }
    
    func saveView(view: String, code: String?) {
        repository.saveCurrentView(view: view, code: code)
    }
}
