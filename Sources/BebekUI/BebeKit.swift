import Foundation
import SwiftUI

@available(macOS 10.15, iOS 14.0, tvOS 14.0, watchOS 4.0, *)
@frozen public struct Account: View, Equatable, Hashable{
    var isim: String
    var logo: Image
    var width: CGFloat?
    var heigth: CGFloat?
    var font: Font?
    public var body: some View{
        VStack {
            logo
                .resizable()
                .frame(width: width, height: heigth)
            Text(isim)
                .font(font)
        }
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(isim)
        hasher.combine(width)
        hasher.combine(heigth)
    }
    public static func == (a: Account, b: Account) -> Bool{
        a.hashValue == b.hashValue
    }
}
