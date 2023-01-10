//
//  SliceMidView.swift
//  ArraySliceApp
//
//  Created by Eric Callanan on 09/01/2023.
//

import SwiftUI

struct SliceMidView: View {
    let nums = [2, 7, 15, 8, 1, 6, 10, 14, 4, 11, 13, 12, 5, 3, 9]
    var body: some View {
        ZStack {
            Color(hue: 0.58, saturation: 0.17, brightness: 1.0)
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
                TitleView(title: "Array Slice using range subscript")
                
                ScrollView {
                    OriginalArrayView(nums: nums)
                    
                    ArraySliceView(title: "Array Slice [5..<9]",
                                   label: "nums[5..<9]",
                                   slice: nums[5..<9])
                    
                    ArraySliceView(title: "Array Slice [5...9]",
                                   label: "nums[5...9]",
                                   slice: nums[5...9])
                    
                }
            }
            .padding(.horizontal, 60)
            .padding()
        }
    }
}

struct SliceMidView_Previews: PreviewProvider {
    static var previews: some View {
        SliceMidView()
    }
}
