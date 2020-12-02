//
//  ContentView.swift
//  Rating
//
//  Created by Particle Fun on 12/1/20.
//

import SwiftUI

struct ContentView: View {
    @State var rating: CGFloat = 4.9
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            RatingView(rating: $rating)
            Text("Rating \(rating.turnicated)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
