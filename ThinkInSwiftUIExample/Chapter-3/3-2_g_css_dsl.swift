//
//  3-2_g_css_dsl.swift
//  ThinkInSwiftUIExample
//
//  Created by liang on 2019/8/6.
//  Copyright © 2019 liang. All rights reserved.
//

import SwiftUI
import Foundation

// https://mecid.github.io/2019/08/07/viewmodifiers-in-swiftui/
extension View {
    func eraseToAnyView() -> AnyView {
        return AnyView(self)
    }
}

struct SubheadlineModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.secondary)
            .font(.subheadline)
    }
}

struct CSSStyleModifier: ViewModifier {
    fileprivate let style: CssStyle
    
    func body(content: _ViewModifier_Content<CSSStyleModifier>) -> some View {
        let styleMirror = Mirror(reflecting: style)
        
        var props: [[String: Any]] = []
        // https://swift.gg/2016/06/06/pattern-matching-4/
        for case let (label?, value) in styleMirror.children {
            if label == "style" {
                continue
            }
            
            print (label, value)
            props.append([label: value])
        }

        let final = props.reduce(content.eraseToAnyView()) { (newContent: AnyView, style: [String: Any]) -> AnyView in
            for (propertyKey, propertyValue) in style {
                // 如果能这样调用就好了。 return self["apply\(propertyKey.captialize)"](content, propertyValue)
                switch propertyKey {
        
                case "foregroundColor":
                    return self.applyForegroundColor(content: newContent, color: propertyValue as? Color)
                case "font":
                    return self.applyFont(content: newContent, font: propertyValue as? Font)
                default:
                    return newContent
                }
            }
            return newContent
        }
        return final
    }
    
    func applyForegroundColor(content: AnyView, color: Color?) -> AnyView {
        guard (color != nil) else {
            return content
        }
        return content.foregroundColor(color).eraseToAnyView()
    }
    func applyFont(content: AnyView, font: Font?) -> AnyView {
        guard font != nil else {
            return content
        }
        return content.font(font).eraseToAnyView()
    }
}


struct CssStyle {
    fileprivate var style: Dictionary<String, Any>
    
    let foregroundColor: Color?
    let font: Font?
    let lineLimit: Int?
//    let lineSpacing: Int?
//
//    let padding: EdgeInsets?
//    let backgroundColor: (Color, Alignment)?
//
//    let opacity: Double = 1
//    let display: String = "block"
//    // func shadow(color: Color, radius: CGFloat, x: CGFloat, y: CGFloat) -> View
//    let shadow: (Color, CGFloat, CGFloat, CGFloat)?
//    let border: (Color, CGFloat)?
//
//    let offset: CGSize?
//    let position: CGPoint?
//    let width: CGFloat?
//    let height: CGFloat?
    
    init(_ style: Dictionary<String, Any>) {
        self.style = style
        if let color = style["foregroundColor"] as? String {
            switch color {
            case ".red":
                self.foregroundColor = .red
            case ".blue":
                self.foregroundColor = .blue
                
            case ".gray":
                self.foregroundColor = .gray
                
            default:
                self.foregroundColor = Color.black
            }
        } else {
            self.foregroundColor = Color.black
        }
        
        if let fontName = style["font"] as? String{
            if fontName == ".caption" {
                self.font = Font.caption
            } else if fontName == ".largeTitle" {
                self.font = Font.largeTitle
            } else {
                self.font = Font.body
            }
        } else {
            self.font = Font.body
        }
        
        self.lineLimit = .none
    }
}

extension View {
    func setStyle(_ style: Dictionary<String, Any>) -> some View {
        let cssStyleObj = CssStyle(style)
        guard let color = cssStyleObj.foregroundColor else {
            return AnyView(self)
        }
        
        return AnyView(self.foregroundColor(color))
    }
    
    func addClass(_ clsName: CssStyle) -> some View {
        ModifiedContent(content: self, modifier: CSSStyleModifier(style: clsName))
    }
    
    func changeClass(clsName: CssStyle) -> some View {
        // 省略
        return self
    }
}


struct Demo_3_2_g_css_dsl: View {
    
    let title_clsName = [
        "font": ".caption",
        "padding": "10px",
        "foregroundColor": ".red"]
    
    let desc_Style = CssStyle([
        "font": ".largeTitle",
        "height": "30px",
        "foregroundColor": ".blue"
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
