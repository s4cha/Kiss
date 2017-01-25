import UIKit

public func localized(_ string:String) -> String {
    return NSLocalizedString(string, comment: "")
}

public extension UIColor {
    public convenience init(R: CGFloat, G: CGFloat, B: CGFloat, A: CGFloat = 1.0) {
        self.init(red: R / 255.0, green: G / 255.0, blue: B / 255.0, alpha: A)
    }
}

public extension UIButton {
    func setBackgroundColor(_ color:UIColor, forState:UIControlState) {
        setBackgroundImage(imageWithColor(color), for: forState)
    }
}

func imageWithColor(_ color: UIColor) -> UIImage {
    let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
    UIGraphicsBeginImageContext(rect.size)
    let context = UIGraphicsGetCurrentContext()
    context?.setFillColor(color.cgColor)
    context?.fill(rect)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image ?? UIImage()
}

public extension NSNotification {
    var keyboardHeight:CGFloat? {
        if let v = userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue {
            return v.cgRectValue.size.height
        }
        return nil
    }
}

public extension UIViewController {

    func push(_ vc:UIViewController) {
        navigationController?.pushViewController(vc, animated: true)
    }

    func present(_ vc:UIViewController) {
        present(vc, animated: true, completion: nil)
    }

    func pop() {
        _ = navigationController?.popViewController(animated: true)
    }

    func dismiss() {
        dismiss(animated: true, completion: nil)
    }
}

public extension UITextField {
    var hasContent:Bool {
        if let t = text, !t.isEmpty {
            return true
        }
        return false
    }
}

extension NSObject {
    
    public func observe(_ name: NSNotification.Name, _ selector: Selector) {
        NotificationCenter.default
            .addObserver(self, selector: selector,
                         name: name,
                         object: nil)
    }
    
    @objc(notificationName:selector:)
    public func observe(_ name: String, _ selector: Selector) {
        observe(Notification.Name(name), selector)
    }
    
    @objc(eventNames:selector:)
    public func observe(_ events: [String], _ selector: Selector) {
        for e in events {
            observe(e, selector)
        }
    }
    
    @objc(events:selector:)
    public func observe(_ events: [NSNotification.Name], _ selector: Selector) {
        for e in events {
            observe(e, selector)
        }
    }
}

public func notify(_ string: String) {
    NotificationCenter.default.post(name: Notification.Name(string),
                                    object: nil,
                                    userInfo: nil)
}

public func notify(_ name: Notification.Name) {
    NotificationCenter.default.post(name: name,
                                    object: nil,
                                    userInfo: nil)
}

public extension UIButton {
    
    @discardableResult
    public func bindTap(to withTarget: Any?, _ selector: Selector) -> Self {
        addTarget(withTarget, action: selector, for: .touchUpInside)
        return self
    }
}

public extension UIViewController {
    
    public func bindTap(of button: UIButton, _ selector: Selector) {
        button.addTarget(self, action: selector, for: .touchUpInside)
    }
}
