//
//  BebeSistemi.swift
//  
//
//  Created by Sinan Caliskan on 2023-02-26.
//

import Foundation
import SwiftUI

public struct BebeSistemi{
    @State public var hesaplar = [insan]()
    public func Onayla(ad: String, parola: String) -> Bool {
        for insan in hesaplar {
            if ad == insan.ad{
                if parola == insan.parola{
                    return true
                } else {
                    return false
                }
            } else {
                return false
            }
        }
        return false
    }
}

public struct insan: Identifiable, Hashable{
    public var id: UUID
    var ad: String
    var parola: String
    var e_mail: String
    var tür: türler
}

enum türler: CaseIterable{
    case pilot, yardımcı_pilot, komutan, Bebe_ajanı, tamirci
}
