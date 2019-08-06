//
//  3-2_f_design_system.swift
//  ThinkInSwiftUIExample
//
//  Created by liang on 2019/8/6.
//  Copyright © 2019 liang. All rights reserved.
//

import SwiftUI

struct Demo_3_2_f_design_system: View {
    var body: some View {
        ZStack() {
            // margin 的实现方式
            Text("Margin展示")
                .padding()
                .background(Color.green)
            Text("Margin展示")
            .padding()
            .background(Color.green)
        }.frame(width: 200, height: 200)
    }
}

#if DEBUG
struct Demo_3_2_f_design_system_Preview: PreviewProvider {
    static var previews: some View {
        Demo_3_2_f_design_system()
    }
}
#endif
