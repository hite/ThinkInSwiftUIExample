//
//  3-2_d_ViewModifier.swift
//  ThinkInSwiftUIExample
//
//  Created by liang on 2019/8/5.
//  Copyright © 2019 liang. All rights reserved.
//

import SwiftUI

struct Demo_3_2_d_ViewContent: View {
    var body: some View {
        VStack {
            Text("属性修饰组件")
            .font(.largeTitle)
            
            Text("属性修饰组件2")
                .border(Color.red)
        }
    }
}

#if DEBUG
struct Demo_3_2_d_ViewContent_Previews: PreviewProvider {
    static var previews: some View {
        Demo_3_2_d_ViewContent()
    }
}
#endif
