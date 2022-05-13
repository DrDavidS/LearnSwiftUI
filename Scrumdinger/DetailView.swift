//
//  DetailView.swift
//  Scrumdinger
//
//  Created by 杨岱川 on 2022/5/11.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum

    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                // 加上导航功能，点击会转到 MeetingView，就是那个大圈圈
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack {
                    Label("length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4) // 让颜色覆盖多一点
                        .foregroundColor(scrum.theme.accentColor) // 前景颜色
                        .background(scrum.theme.mainColor) // 背景颜色
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
        .navigationTitle(scrum.title) // 展示navigationTitle，视图标题。也就是这里的Design
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
