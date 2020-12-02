//
//  RatingView.swift
//  RatingView
//
//  Created by Particle Fun on 11/29/20.
//

import SwiftUI

 struct RatingView: View {
    @Binding var rating: CGFloat
    var max: Int = 5
    var icon: String = "star.fill"
    
    var body: some View {
        
        items.overlay(
            GeometryReader { g in
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: rating / CGFloat(max) * g.size.width)
                        .foregroundColor(.yellow)
                }
                Tappable { gesture in
                    setRating(with: gesture, width: g.size.width)
                }
            } .mask(items)
        )
        .foregroundColor(.gray)
    }
}

 extension RatingView {
    var items: some View {
        HStack(spacing: 0) {
            ForEach(0..<max) { i in
                Image(systemName: icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    
    private func setRating(with gesture: UITapGestureRecognizer, width: CGFloat) {
        let value = gesture.location(in: gesture.view).x
        self.rating = (value * CGFloat(max)) / width
    }
    
}
