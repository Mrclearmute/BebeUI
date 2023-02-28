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
    public var image: Image
    public var font: Font
    public var textfont: Font
    public var kalkan = false
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
        let ad = Array(self.isim.lowercased())
        var devam = false
        var sayı = 0
        kalkan = false
        for harf in ad{
            if harf == "k"{
                devam = true
                sayı += 1
            } else if harf == "a" && devam == true{
                sayı += 1
            } else if harf == "l" && devam == true{
                sayı += 1
            } else if harf == "k" && devam == true{
                sayı += 1
            } else if harf == "a" && devam == true{
                sayı += 1
            } else if harf == "n" && devam == true{
                sayı += 1
                print(harf)
            } else {
                if sayı == 6 && devam == true{
                    kalkan = true
                }
                devam = false
            }
        }
        
        if self.isim.lowercased() == "Bebe Kalkanatik Devreleri".lowercased(){
            self.image = Image(systemName: "shield.lefthalf.fill")
        } else if kalkan == true{
            self.image = Image(systemName: "exclamationmark.shield.fill")
        } else {
            self.image = Image(systemName: "person.crop.circle.fill.badge.questionmark")
        }
    }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 4.0, *)
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(meslek: .ajan, isim: "Agu Kalkanı", font: .title, textfont: .system(size: 7))
            .padding(10)
    }
}
