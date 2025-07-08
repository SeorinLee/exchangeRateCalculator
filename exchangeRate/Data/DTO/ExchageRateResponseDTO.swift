//
//  ExchageRateResponseDTO.swift
//  exchangeRate
//
//  Created by 이서린 on 7/8/25.
//

import Foundation

struct ExchageRateResponseDTO: Codable {
    let baseCode: String
    let rates: [String: Double]
    
    func toDomain() -> ExchangeRate {
        return ExchangeRate(baseCode: baseCode, rates: rates)
    }
    
    enum CodingKeys: String, CodingKey {
        case rates
        case baseCode = "base_code"
    }
}
