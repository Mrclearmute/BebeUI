import Foundation
import SwiftUI

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 4.0, *)
@frozen public struct Account: View, Equatable, Hashable{
    public var isim: String
    public var logo: Image
    public var font: Font
    public var textfont: Font
    public var body: some View{
        VStack {
            logo
                .font(font)
            Text(isim)
                .font(textfont)
        }
    }
    @inlinable public init(isim: String, logo: Image, font: Font, textfont: Font) {
        self.isim = isim
        self.logo = logo
        self.font = font
        self.textfont = textfont
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(isim)
    }
    public static func == (a: Account, b: Account) -> Bool{
        a.hashValue == b.hashValue
    }
}
