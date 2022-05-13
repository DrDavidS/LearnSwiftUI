//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 杨岱川 on 2022/5/5.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
