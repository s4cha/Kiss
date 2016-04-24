//: Playground - noun: a place where people can play

import UIKit

//Variables
let vc = UIViewController()
let vc2 = UIViewController()
let textfield = UITextField()
let notification = NSNotification(name: "test", object: nil)
let button = UIButton()


// Translations

NSLocalizedString("TranslationKey", comment: "")
localized("TranslationKey")



// RGB Colors

UIColor(red: 100 / 255.0, green: 224 / 255.0, blue: 132 / 255.0, alpha: 1)
UIColor(R: 100, G: 224, B: 132)



// Push

vc.navigationController?.pushViewController(vc2, animated: true)
vc.push(vc2)

// Present

vc.presentViewController(vc2, animated: true, completion: nil)
vc.present(vc2)

// Dismiss

vc.navigationController?.popViewControllerAnimated(true)
vc.pop()

vc.dismissViewControllerAnimated(true, completion: nil)
vc.dismiss()

// Check textfield content

if let t = textfield.text where !t.isEmpty {
    print("not empty")
}

if textfield.hasContent {
    print("not empty")
}

// Get keyboard height from Keyboard Notification

if let v = notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue {
     let keyboardHeight = v.CGRectValue().size.height
}

notification.keyboardHeight


// UIButton background color
button.setBackgroundColor(.blueColor(), forState: .Normal)

