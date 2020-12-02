//
//  Tappable.swift
//  RatingView
//
//  Created by Particle Fun on 11/29/20.
//

import SwiftUI
import UIKit
 
// MARK:- UITapGestureRecognizer

 struct Tappable: UIViewRepresentable {
    var tapCallback: (UITapGestureRecognizer) -> Void
    typealias UIViewType = UIView

    func makeCoordinator() -> Tappable.Coordinator {
        Coordinator(tapCallback: self.tapCallback)
    }

    func makeUIView(context: UIViewRepresentableContext<Tappable>) -> UIView {
        let view = UIView()
        view.addGestureRecognizer(UITapGestureRecognizer(
                                    target: context.coordinator,
                                    action: #selector(Coordinator.handleTap(sender:))))
        return view
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Tappable>) { }

}


 extension Tappable {
    class Coordinator {
        var tapCallback: (UITapGestureRecognizer) -> Void
        init(tapCallback: @escaping (UITapGestureRecognizer) -> Void) { self.tapCallback = tapCallback }
        @objc func handleTap(sender: UITapGestureRecognizer) { self.tapCallback(sender) }
    }
}

 extension CGFloat {
    var turnicated: String {
        return String(format:"%.1f", self)
    }
}
