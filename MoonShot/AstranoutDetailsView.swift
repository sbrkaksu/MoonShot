//
//  AstranoutDetailsView.swift
//  MoonShot
//
//  Created by Berk Aksu on 19.01.2024.
//

import SwiftUI

struct AstranoutDetailsView: View {
    
    let astronout: Astronaut
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronout.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronout.description)
                    .padding()
            }
            .background(.darkBackGround)
            .navigationTitle(astronout.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AstranoutDetailsView_Previews: PreviewProvider {
    static let astranouts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstranoutDetailsView(astronout: astranouts["armstrong"]!)
            .preferredColorScheme(.dark)
    }
}
