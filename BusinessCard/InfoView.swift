//
//  InfoView.swift
//  BusinessCard
//
//  Created by Gokul Rama on 2/19/21.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 45)
            .overlay( HStack {
                Image(systemName: imageName).foregroundColor(.green)
                Text(text).foregroundColor(Color("TextColor"))
            })
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
