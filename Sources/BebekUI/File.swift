//
//  F.swift
//  
//
//  Created by Sinan Caliskan on 2023-02-26.
//

import Foundation

public enum Meslek{
    case pilot, bebe_ajanı, bilinmiyor, yardımcı_pilot, komutan, tamirci
}

public protocol Kişi: Hashable{
    var meslek: Meslek { get }
}

public protocol Bebek: Kişi, Hashable{
    var meslek: Meslek { get }
    func Bebe()
}

public protocol Agu: Kişi, Hashable{
    var meslek: Meslek { get }
    func Agula()
}

extension Kişi where Self: Bebek{
    public func Bebe(){
        
    }
}

extension Kişi where Self: Agu{
    public func Agula(){
        
    }
}

