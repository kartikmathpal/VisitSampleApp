//
//  MaterialTextField.swift
//  Signup
//
//  Created by Kartik Mathpal on 27/03/16.
//  Copyright © 2016 Mathpal Inc. All rights reserved.
//

import UIKit

class MaterialTextField: UITextField {

    override func awakeFromNib() {
        layer.borderColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.5).CGColor
        layer.cornerRadius = 2.0
        layer.borderWidth = 1.0
        
    }
    
    //placeholder
    //textRectForBounds : whats the  rectangle u want to have the text in
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 0)   //10 from left, 0 from right;"bounds" is the bounds of actual text field 
    }
    
    //For editable text
    //This when writing in text field
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 0)
    }
}
