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
    @IBInspectable var inspLabel: UILabel = UILabel()
    
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
        let fontSize = CGFloat(30)
        
        let titleString = "Mr. Andres Pachooooooooooooooooooooooooooooooooooo Pinguini kwansdfasdfasdfasasdasdfasdfasdf!"
        
        let paragrapStyle = NSMutableParagraphStyle()
        paragrapStyle.hyphenationFactor = 0.2
        
        let fontDescriptor = UIFontDescriptor.preferredFontDescriptorWithTextStyle(UIFontTextStyleBody)//UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        let fontType = UIFont(descriptor: fontDescriptor, size: fontSize)
        
        var attributeDict: [String: AnyObject] = ["NSFontAttributeName":fontType]
        attributeDict["NSParagraphStyleAttributeName"] = paragrapStyle

        attributeDict["NSForegroundColorAttributeName"] = UIColor.greenColor()
        attributeDict["NSStrokeWidthAttributeName"] = -5
        attributeDict["NSStrokeColorAttributeName"] = UIColor.redColor()
        
        let attributedString = NSMutableAttributedString(string: titleString, attributes: attributeDict)
        
//        label.numberOfLines = 0
        label.layer.borderColor = UIColor.blueColor().CGColor
        label.layer.borderWidth = 0.97
        label.attributedText = attributedString
//        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        
    }
    override func prepareForInterfaceBuilder() {
        
    }
}

