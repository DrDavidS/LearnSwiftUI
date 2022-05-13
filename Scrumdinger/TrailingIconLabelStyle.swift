//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by 杨岱川 on 2022/5/8.
//  通过LabelStyle协议，您可以通过在多个视图中重复使用相同的标签样式，在整个应用程序中创建一致的设计。

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}


extension LabelStyle where Self == TrailingIconLabelStyle{
    static var trailingIcon: Self { Self() }
}
