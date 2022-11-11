//
// Created by Stéphane on 10.09.22.
//

import Foundation
import SwiftUI

public struct VTitleNumerologie: View {
    @State var text: TextCore

    public var body: some View {
        HStack {
            Image(systemName: "plus")
                    .imageScale(IMAGESCALE)
                    .foregroundColor(FOREGROUNDCOLOR)
            Text("\(text.numerologie())")
                    .font(FONTSYSTEMTITLEMEDIUM)
                    .clipped()
            Spacer()
        }
                .font(FONTSYSTEMTITLE)
                .clipped()
    }
}