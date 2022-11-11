//
//  Created by Stéphane on 02.11.22.
//

import SwiftUI

@available(iOS 15, macOS 12.0, *)
struct VAstrologieHouses: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @Binding var bsSwe: SweCore

    public init(bsSwe: Binding<SweCore>) {
        self._bsSwe = bsSwe
    }

    var body: some View {
        let colorStroke: Color = colorScheme == .light ? .black : .white
        VStack {
            DrawHouseTriangle(lines: bsSwe.houseLines()).fill(colorStroke)
        }
                .frame(width: CGFloat(bsSwe.size), height: CGFloat(bsSwe.size))
        VStack {
            DrawHouseLine(lines: bsSwe.houseLines()).stroke(colorStroke, lineWidth: 1.0)
        }
                .frame(width: CGFloat(bsSwe.size), height: CGFloat(bsSwe.size))
    }
}
