//
//  SwiftUIView 2.swift
//  
//
//  Created by Sinan Caliskan on 2023-03-01.
//

import SwiftUI

@available(macOS 13.0, iOS 16.0, tvOS 16.0, watchOS 8.0, *)
@frozen public struct BebeKalkanatikDevreleri: View {
    @State private var güvenli = true
    public var body: some View {
        NavigationStack {
            if güvenli == false{
                Image(systemName: "lock.trianglebadge.exclamationmark")
                    .symbolVariant(.circle.slash)
                    .foregroundStyle(.yellow, .red)
            } else {
                Image("custom.lock.shield", bundle: .module)
                    .foregroundStyle(.green)
            }
        }
    }
    @inlinable public init(){
        
    }
}

@available(macOS 13.0, iOS 16.0, tvOS 16.0, watchOS 8.0, *)
struct SwiftUIView_2_Previews: PreviewProvider {
    static var previews: some View {
       BebeKalkanatikDevreleri()
    }
}
