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
                if sayı == 6 && devam == true{
                    kalkan = true
                }
            } else {
                if sayı == 6 && devam == true{
                    kalkan = true
                }
                devam = false
            }
        }
        var devam2 = false
        var sayı2 = 0
        for harf in ad{
            if harf == "b"{
                devam2 = true
                sayı2 += 1
            } else if harf == "e" && devam2 == true{
                sayı2 += 1
            } else if harf == "b" && devam2 == true{
                sayı2 += 1
            } else if harf == "e" && devam2 == true{
                sayı2 += 1
                print(harf)
                if sayı2 == 3 && devam2 == true{
                   Bebe = true
                }
            } else {
                if sayı2 == 3 && devam2 == true{
                    Bebe = true
                }
                devam2 = false
            }
        }
        var devam3 = false
        var sayı3 = 0
        for harf in ad{
            if harf == "a"{
                devam3 = true
                sayı3 += 1
            } else if harf == "g" && devam3 == true{
                sayı3 += 1
            } else if harf == "u" && devam3 == true{
                sayı3 += 1
                print(harf)
                if sayı3 == 3 && devam3 == true{
                    agu = true
                }
            } else {
                if sayı3 == 3 && devam3 == true{
                    agu = true
                }
                devam2 = false
            }
        }
        
        if self.isim.lowercased() == "Bebe Kalkanatik Devreleri".lowercased(){
            self.image = Image(systemName: "shield.lefthalf.fill")
        } else if kalkan == true{
            self.image = Image(systemName: "exclamationmark.shield.fill")
        } else if Bebe == true{
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
        SwiftUIView(meslek: .ajan, isim: "Bebe Kalkan", font: .system(size: 57), textfont: .system(size: 7))
            .padding(10)
    }
}
