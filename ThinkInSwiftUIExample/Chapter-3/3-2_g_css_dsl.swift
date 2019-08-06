//
//  3-2_g_css_dsl.swift
//  ThinkInSwiftUIExample
//
//  Created by liang on 2019/8/6.
//  Copyright © 2019 liang. All rights reserved.
//

import SwiftUI

class CssStyle {
    fileprivate var style: Dictionary<String, Any>
    
    let foregroundColor: Color?
    
    init(_ style: Dictionary<String, Any>) {
        self.style = style
        if let color = style["color"] as? String {
            switch color {
            case ".red":
                self.foregroundColor = .red
                
            case ".gray":
                self.foregroundColor = .gray
                
            default:
                self.foregroundColor = Color.black
            }
        } else {
            self.foregroundColor = Color.black
        }
    }
}

extension View {
    func setStyle(_ style: Dictionary<String, Any>) -> some View {
        let cssStyleObj = CssStyle(style)
        guard let color = cssStyleObj.foregroundColor else {
            return self.foregroundColor(Color.red)
        }
        
        return self.foregroundColor(color)
    }
    
    func addClass(_ clsName: CssStyle...) -> some View {
        if let cssStyleObj = clsName.first {
            if let color = cssStyleObj.foregroundColor {
                return self.foregroundColor(color)
            }
        }

        return self.foregroundColor(.black)
    }
    
    func changeClass(clsName: CssStyle) -> some View {
        // 省略
        return self
    }
}


struct Demo_3_2_g_css_dsl: View {
    
    let title_clsName = [
        "fontSize": ".largeTitle",
        "padding": "10px",
        "color": ".red"]
    
    let desc_Style = CssStyle([
        "fontSize": ".caption",
        "height": "30px",
        "color": ".gray"
    ])
    
    var body: some View {
        VStack() {
            Text("我是标题")
                .setStyle(title_clsName)
            
            Text("我是描述的内容")
                .addClass(desc_Style)
        }.frame(width: 200, height: 200)
    }
}

#if DEBUG
struct Demo_3_2_g_css_dsl_Preview: PreviewProvider {
    static var previews: some View {
        Demo_3_2_g_css_dsl()
    }
}
#endif
