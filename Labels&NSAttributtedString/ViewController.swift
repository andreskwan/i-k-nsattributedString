//
//  ViewController.swift
//  Labels&NSAttributtedString
//
//  Created by Andres Kwan on 7/27/16.
//  Copyright © 2016 Andres Kwan. All rights reserved.
//

import UIKit

@IBDesignable
class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        configureLabel()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureLabel() {
        let fontSize = CGFloat(28)
        
        let titleString = "Mr. Andres PachoPachoPachoPachoPachoPachoPachoPachoPacho Pinguini kwankwankwankwankwankwankwankwan!"
        
        let paragrapStyle = NSMutableParagraphStyle()
        paragrapStyle.hyphenationFactor = 0.5
        paragrapStyle.lineBreakMode = NSLineBreakMode.ByCharWrapping

        let fontType = UIFont(name: "American Typewriter", size: fontSize)
        
        let attributeDict = [
            NSFontAttributeName : fontType!,
            NSParagraphStyleAttributeName : paragrapStyle,
            NSForegroundColorAttributeName : UIColor.whiteColor(),
            NSStrokeWidthAttributeName : -3,
            NSStrokeColorAttributeName : UIColor.blackColor()
        ]
        //        paragrapStyle.alignment = NSTextAlignment.Left
        //        paragrapStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        //        let fontDescriptor = UIFontDescriptor.preferredFontDescriptorWithTextStyle(UIFontTextStyleBody)
        //        UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        //        let fontType = UIFont(descriptor: fontDescriptor, size: fontSize)
        

//        let attributedString = NSAttributedString(string: titleString, attributes: attributeDict)
        let attributedString = NSAttributedString(string: titleString, attributes: attributeDict)
        
        label.numberOfLines = 0
        label.layer.borderColor = UIColor.blueColor().CGColor
        label.layer.borderWidth = 0.97
        label.attributedText = attributedString
//        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        
    }
    override func prepareForInterfaceBuilder() {
        
    }
}

