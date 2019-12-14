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
        }
    }
}

struct FindDefaultValues_Previews: PreviewProvider {
    static var previews: some View {
        FindDefaultValues()
    }
}
