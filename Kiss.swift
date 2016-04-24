func localized(string:String) -> String {
    return NSLocalizedString(string, comment: "")
}

public extension UIColor {
    public convenience init(R: CGFloat, G: CGFloat, B: CGFloat, A: CGFloat = 1.0) {
        self.init(red: R / 255.0, green: G / 255.0, blue: B / 255.0, alpha: A)
    }
}

extension UIButton {
    func setBackgroundColor(color:UIColor, forState:UIControlState) {
        setBackgroundImage(imageWithColor(color), forState: forState)
    }
}

func imageWithColor(color:UIColor) -> UIImage {
    let rect = CGRectMake(0.0, 0.0, 1.0, 1.0)
    UIGraphicsBeginImageContext(rect.size)
    let context = UIGraphicsGetCurrentContext()
    CGContextSetFillColorWithColor(context, color.CGColor)
    CGContextFillRect(context, rect)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image
}

extension NSNotification {
    var keyboardHeight:CGFloat? {
        if let v = userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue {
            return v.CGRectValue().size.height
        }
        return nil
    }
}

extension UIViewController {

    func push(vc:UIViewController) {
        navigationController?.pushViewController(vc, animated: true)
    }

    func present(vc:UIViewController) {
        presentViewController(vc, animated: true, completion: nil)
    }

    func pop() {
        navigationController?.popViewControllerAnimated(true)
    }

    func dismiss() {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

extension UITextField {
    var hasContent:Bool {
        if let t = text where !t.isEmpty {
            return true
        }
        return false
    }
}
