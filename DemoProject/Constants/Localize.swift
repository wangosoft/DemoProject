//
//  Localizable.swift
//
//  Created by Onur GÜLER on 19.12.2021.
//

import Foundation

struct Localize {
    struct General {
        static let empty = NSLocalizedString("", comment: "General")
    }

    struct Main {
        static let title = NSLocalizedString("List", comment: "Main")
    }
    
    struct Error {
        static let title = NSLocalizedString("Beklenmedik bir hata oluştu!", comment: "Error")
        static let tryAgain = NSLocalizedString("Tekrar Dene", comment: "Error")
    }
}
