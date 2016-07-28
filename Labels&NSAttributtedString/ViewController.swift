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
        let fontSize = CGFloat(25)
        
        let titleString = "Mr. Andres Pachooooooooooooooooooooooooooooooooooo Pinguini kwansdfasdfasdfasasdasdfasdfasdf!"
        
        let paragrapStyle = NSMutableParagraphStyle()
        paragrapStyle.hyphenationFactor = 0.2

        let fontType = UIFont(name: "American Typewriter", size: fontSize)
        
        let attributeDict = [
            NSFontAttributeName : fontType!,
            NSParagraphStyleAttributeName : paragrapStyle,
            NSForegroundColorAttributeName : UIColor.whiteColor(),
            NSStrokeWidthAttributeName : -3,
            NSStrokeColorAttributeName : UIColor.blackColor()
            ]

        let attributedString = NSMutableAttributedString(string: titleString, attributes: attributeDict)
        
        attributedString.addAttribute(NSFontAttributeName, value: UIFont(name: "Chalkduster", size: fontSize + 5)!, range: NSRange(location: 5, length: 6))
        
        label.numberOfLines = 0
        label.layer.borderColor = UIColor.blueColor().CGColor
        label.layer.borderWidth = 0.97
        label.attributedText = attributedString
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        
    }
    override func prepareForInterfaceBuilder() {
        
    }
}

