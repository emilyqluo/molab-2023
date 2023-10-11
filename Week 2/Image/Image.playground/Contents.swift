import UIKit
import PlaygroundSupport

// Create a function to generate an image
func generateImage() -> UIImage {
    // Define the size of the image
    let size = CGSize(width: 500, height: 500) // Reduced image size to 500x500
    
    // Create a bitmap context to draw on
    UIGraphicsBeginImageContext(size)
    
    // Get the current context
    if let context = UIGraphicsGetCurrentContext() {
        // Define the background emoji "🌌" with a larger font size
        let backgroundEmoji = "🌌"
        let backgroundFontSize: CGFloat = 500
        let backgroundAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: backgroundFontSize),
            .foregroundColor: UIColor.black
        ]
        
        // Calculate the position and size of the centered background emoji
        let xPosition = (size.width - backgroundFontSize) / 2
        let yPosition = (size.height - backgroundFontSize) / 2
        let emojiSize = CGSize(width: backgroundFontSize, height: backgroundFontSize)
        
        // Create an attributed string for the background emoji
        let attributedBackground = NSAttributedString(string: backgroundEmoji, attributes: backgroundAttributes)
        
        // Draw the attributed string in the context
        attributedBackground.draw(in: CGRect(x: xPosition, y: yPosition, width: emojiSize.width, height: emojiSize.height))
        
        // Define the emojis to place within the background
        let emojis = ["🚀", "👩‍🚀", "💫", "🪐"]
        
        // Define attributes for the emojis
        let emojiAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 40),
            .foregroundColor: UIColor.white
        ]
        
        for emoji in emojis {
            // Calculate random positions within the boundaries of the background emoji
            let randomX = CGFloat(arc4random_uniform(UInt32(emojiSize.width - 40)))
            let randomY = CGFloat(arc4random_uniform(UInt32(emojiSize.height - 40)))
            
            // Create an attributed string for the emoji
            let emojiAttributedString = NSAttributedString(string: emoji, attributes: emojiAttributes)
            
            // Draw the attributed string in the context within the boundaries of the background
            emojiAttributedString.draw(in: CGRect(x: xPosition + randomX, y: yPosition + randomY, width: 40, height: 40))
        }
        
        // Create an image from the context
        if let image = UIGraphicsGetImageFromCurrentImageContext() {
            // End the context
            UIGraphicsEndImageContext()
            return image
        }
    }
    
    return UIImage()
}

// Generate the image
let image = generateImage()

// Display the image in the playground and set content mode to scale
let imageView = UIImageView(image: image)
imageView.contentMode = .scaleAspectFit
PlaygroundPage.current.liveView = imageView
