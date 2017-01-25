//: # KISS (Keep it Simple Stupid)


import UIKit

let vc = UIViewController()
let notification = NSNotification(name: NSNotification.Name(rawValue: "test"), object: nil)
let button = UIButton()

class AController : UIViewController {
    
//: ## Before
    
    func before() {
        NSLocalizedString("TranslationKey", comment: "")
        UIColor(red: 100 / 255.0, green: 224 / 255.0, blue: 132 / 255.0, alpha: 1)
        navigationController?.pushViewController(vc, animated: true)
        present(vc, animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        if let v = notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardHeight = v.cgRectValue.size.height
        }
        button.setBackgroundColor(.blue, forState: .normal)
        NotificationCenter.default.addObserver(self, selector: #selector(someFunction), name: NSNotification.Name(rawValue:"MyNotification"),object: nil)
        NotificationCenter.default.post(name: NSNotification.Name(rawValue:"MyNotif"), object: nil, userInfo: nil)
        button.addTarget(self, action: #selector(someFunction), for: .touchUpInside)
    }
    
//: ## After
    
    func after() {
        localized("TranslationKey")
        UIColor(R: 100, G: 224, B: 132)
        push(vc)
        present(vc)
        pop()
        dismiss()
        notification.keyboardHeight
        button.setBackgroundColor(.blue, forState: .normal)
        observe("MyNotification", #selector(someFunction))
        notify("MyNotif")
        bindTap(of: button, #selector(someFunction))
    }
    
    func someFunction() {}
}



