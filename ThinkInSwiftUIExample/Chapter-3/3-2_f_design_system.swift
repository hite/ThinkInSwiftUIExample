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
        List() {
            // margin 的实现方式
            Text("Margin展示")
                .padding()
                .background(Color.green)
            
            Text("Margin展示")
            .padding()
            .background(Color.green)
//            // 测试 text 和容器的边距
//            Text("Text 和容器的变")
//                .background(Color.green)
//            .padding(0)
//                .border(Color.red)
            
        }
    }
}

#if DEBUG
struct Demo_3_2_f_design_system_Preview: PreviewProvider {
    static var previews: some View {
        Demo_3_2_f_design_system()
    }
}
#endif
