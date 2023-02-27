//
//  SwiftUIView.swift
//  
//
//  Created by Sinan Caliskan on 2023-02-26.
//

import SwiftUI

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 4.0, *)
@frozen public struct SwiftUIView: View, Bebek{
    public var meslek: Meslek
    public var isim: String
    public var image: Image?
    public var width: CGFloat?
    public var heigth: CGFloat?
    public var body: some View {
        Account(isim: isim, logo: image!, width: width, heigth: width, font: .title)
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(isim)
    }
    @inlinable public init(meslek: Meslek, isim: String) {
        self.meslek = meslek
        self.isim = isim
        
        switch self.isim.lowercased(){
        case "Bebe Kalkanatik Devreleri".lowercased():
            self.image = Image(systemName: "shield.lefthalf.fill")
        default:
            self.image = Image(systemName: "person.crop.circle.fill.badge.questionmark")
        }
    }
    @inlinable public init(meslek: Meslek, isim: String, width: CGFloat, height: CGFloat) {
        self.meslek = meslek
        self.isim = isim
        self.width = width
        self.heigth = height
        
        switch self.isim.lowercased(){
        case "Bebe Kalkanatik Devreleri".lowercased():
            self.image = Image(systemName: "shield.lefthalf.fill")
        default:
            self.image = Image(systemName: "person.crop.circle.fill.badge.questionmark")
        }
    }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 4.0, *)
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(meslek: .ajan, isim: "Bebe", width: 100, height: 100)
    }
}
