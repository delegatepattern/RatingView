# RatingView
SwiftUI Rating view

# Features

*  Fully adaptive and use interactive enabled
*  Floating number rating 
*  Set your own custom max rating elements
*  Uses Apple SF Symoble for the Image view icons
* Easy and simple to use. No dependencies needed

# Usage

###### Drag and drop the Source folder into your xcode project and call the SwiftUI struct just like below:

```swift
struct ContentView: View {
    @State var rating: CGFloat = 4.9
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            RatingView(rating: $rating)
            Text("Rating \(rating.turnicated)")
        }
        
    }
}
```
