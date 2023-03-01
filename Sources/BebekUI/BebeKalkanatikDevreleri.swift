//
//  SwiftUIView 2.swift
//  
//
//  Created by Sinan Caliskan on 2023-03-01.
//

import SwiftUI

@available(macOS 13.0, iOS 16.0, tvOS 16.0, watchOS 8.0, *)
public struct BebeKalkanatikDevreleri: View {
    public var body: some View {
        NavigationStack {
            Image(systemName: "custom.lock.trianglebadge.exclamationmark")
        }
    }
}

@available(macOS 13.0, iOS 16.0, tvOS 16.0, watchOS 8.0, *)
struct SwiftUIView_2_Previews: PreviewProvider {
    static var previews: some View {
       BebeKalkanatikDevreleri()
    }
}
