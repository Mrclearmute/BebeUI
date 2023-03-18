//
//  SwiftUIView.swift
//  
//
//  Created by Sinan Caliskan on 2023-02-26.
//

import SwiftUI

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@frozen public struct SwiftUIView: View, Bebek{
    public var meslek: Meslek
    public var isim: String
    public var image: Image
    public var font: Font
    public var textfont: Font
    public var kalkan = false
    public var Bebe = false
    public var agu = false
    public var body: some View {
        Account(isim: isim, logo: image, font: font, textfont: textfont)
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(isim)
    }
    @inlinable public init(meslek: Meslek, isim: String) {
        self.meslek = meslek
        self.isim = isim
        self.font = .callout
        self.textfont = .body
        
        switch self.isim.lowercased(){
        case "Bebe Kalkanatik Devreleri".lowercased():
            self.image = Image(systemName: "shield.lefthalf.fill")
        default:
            self.image = Image(systemName: "person.crop.circle.fill.badge.questionmark")
        }
    }
    @inlinable public init(meslek: Meslek, isim: String, font: Font, textfont: Font) {
        self.meslek = meslek
        self.isim = isim
        self.font = font
        self.textfont = textfont
        var kalkan = Kalkanmı(bulunacak: "", ad: self.isim)
        var bebek = doğrumu(bulunacak: "", ad: self.isim)
        var agu = Agumu(bulunacak: "", ad: self.isim)
        if self.isim.lowercased() == "Bebe Kalkanatik Devreleri".lowercased(){
            self.image = Image(systemName: "shield.lefthalf.fill")
        } else if kalkan && bebek{
            self.image = Image(systemName: "shield.checkerboard")
        } else if kalkan == true{
            self.image = Image(systemName: "exclamationmark.shield.fill")
        } else if bebek == true{
            self.image = Image(systemName: "person.crop.square.fill.and.at.rectangle")
        }  else if agu == true{
            self.image = Image(systemName: "person.2.crop.square.stack.fill")
        } else {
            self.image = Image(systemName: "person.crop.circle.fill.badge.questionmark")
        }
    }
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(meslek: .bebe_ajanı, isim: "Bebe Kalkan", font: .system(size: 57), textfont: .system(size: 7))
            .padding(10)
    }
}
