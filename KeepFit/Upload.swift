//
//  Upload.swift
//  KeepFit
//
//  Created by Clifford Lin on 3/21/21.
//

import SwiftUI

struct Upload: View
{
    var body: some View
    {
        ZStack
        {
            Color(.systemGray5)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Hello")
                    .padding(.bottom, 50)
            }
            
        }
    }
}



struct Upload_Previews: PreviewProvider {
    static var previews: some View {
        Upload()
    }
}
