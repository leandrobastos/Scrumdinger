//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Leandro Bastos on 11/08/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
