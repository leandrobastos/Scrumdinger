//
//  ThemePickerView.swift
//  Scrumdinger
//
//  Created by Leandro Bastos on 12/08/22.
//

import SwiftUI

struct ThemePickerView: View {
    @Binding var selection: Theme

    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
    }
}

struct ThemePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ThemePickerView(selection: .constant(.periwinkle))
    }
}
