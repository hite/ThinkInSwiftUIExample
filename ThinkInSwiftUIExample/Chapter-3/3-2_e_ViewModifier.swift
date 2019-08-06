//
//  3-2_e_ViewModifier.swift
//  ThinkInSwiftUIExample
//
//  Created by liang on 201985.
//  Copyright © 2019 liang. All rights reserved.
//

import SwiftUI

struct Demo_3_2_e_ViewModifier: View {
    var body: some View {
        VStack(spacing: 0) {
            // margin 的实现方式
            Text("Margin展示")
                .padding()
                .background(Color.green)
        }
    }
}

#if DEBUG
struct Demo_3_2_e_ViewModifier_Preview: PreviewProvider {
    static var previews: some View {
        Demo_3_2_e_ViewModifier()
    }
}
#endif

