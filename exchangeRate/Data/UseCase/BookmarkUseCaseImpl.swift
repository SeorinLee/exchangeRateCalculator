//
//  BookmarkUseCaseImpl.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation

final class BookmarkUseCaseImpl: BookmarkUseCase {
    private let repository: CoreDataRepository
    
    init(repository: CoreDataRepository) {
        self.repository = repository
    }
    
    func toggleBookmark(for code: String) {
        repository.toggleBookmark(for: code)
    }
    
    func loadBookmarkeCodes() -> Set<String> {
        repository.loadBookmarkCodes()
    }
}
