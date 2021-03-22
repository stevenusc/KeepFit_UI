//
//  Profile.swift
//
//
//
//

import SwiftUI

struct Profile: View
{
    var body: some View
    {
        ZStack
        {
            VStack
            {
                Image("profile_pic")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200.0, height: 700.0, alignment: .top)
            }
        }
    }
}



struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
