//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Vuslat Yolcu on 14.03.2023.
//

import Foundation

extension Decimal {
    
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
