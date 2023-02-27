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
    public var logo: Image
    public var body: some View {
        Account(isim: isim, logo: logo, width: 100, heigth: 100, font: .title)
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(isim)
    }
    @inlinable public init(meslek: Meslek, isim: String, logo: Image) {
        self.meslek = meslek
        self.isim = isim
        self.logo = logo
    }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 4.0, *)
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(meslek: .ajan, isim: "Bebe", logo: Image(systemName: "person.crop.circle.fill"))
    }
}
