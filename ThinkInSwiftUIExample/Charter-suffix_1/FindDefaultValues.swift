//
//  FindDefaultValues.swift
//  ThinkInSwiftUIExample
//
//  Created by liang on 2019/12/14.
//  Copyright © 2019 liang. All rights reserved.
//

import SwiftUI

struct FindDefaultValues: View {
    var body: some View {
        VStack {
                        // padding
            HStack(alignment: .top, spacing: 0){
                Text("lalal").padding().background(Color.red)
                Text("lalal").padding(16).background(Color.red)
            }

            HStack(alignment: .top, spacing: 8){
               Image(systemName: "chevron.right.circle")
               .padding()
               .background(Color.green)
               Image(systemName: "chevron.right.circle")
               .padding(16)
               .background(Color.green)
            }
            HStack(alignment: .top){
               Image(systemName: "chevron.right.circle")
               .padding()
               .background(Color.green)
               Image(systemName: "chevron.right.circle")
               .padding(16)
               .background(Color.green)
            }
            // font
            Group {
                HStack {
                    Text("default, body")
                    Text("default, body").font(.body)
                    Text("default, body").font(Font.custom("mybody", size: 17.6))
                }
                HStack {
                    Text("largeTitle").font(.largeTitle)
                    Text("largeTitle").font(Font.system(size: 34, weight: .regular, design: .default))
                }
                HStack {
                    Text("caption").font(.caption)
                    Text("caption").font(Font.system(size: 12, weight: .regular, design: .default))
                }
                HStack {
                    Text("title").font(.title)
                    Text("title").font(Font.system(size: 28, weight: .regular, design: .default))
                }
                HStack {
                    Text("headline").font(.headline)
                    Text("headline").font(Font.system(size: 17.0, weight: .medium, design: .default))
                }
            }
        }
    }
}

struct FindDefaultValues_Previews: PreviewProvider {
    static var previews: some View {
        FindDefaultValues()
    }
}
