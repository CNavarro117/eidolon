import Foundation
import XNGMarkdownParser
import Artsy_UIFonts

class MarkdownParser: XNGMarkdownParser {

    override init() {
        super.init()

        paragraphFont = UIFont.serifFontWithSize(16)
        linkFontName = UIFont.serifItalicFontWithSize(16).fontName
        boldFontName = UIFont.serifBoldFontWithSize(16).fontName
        italicFontName = UIFont.serifItalicFontWithSize(16).fontName
        shouldParseLinks = false

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = 16

        topAttributes = [
            NSParagraphStyleAttributeName: paragraphStyle,
            NSForegroundColorAttributeName: UIColor.blackColor()
        ]
    }
}