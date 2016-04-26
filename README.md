# Kiss 💋- *be more expressive !*

This intends to be copy pasted in an iOS Xcode project to facilitate things we do all the time :)


## Translations

```swift
NSLocalizedString("TranslationKey", comment: "")
```

```swift
localized("TranslationKey")
```


## RGB Colors
```swift
UIColor(red: 100 / 255.0, green: 224 / 255.0, blue: 132 / 255.0, alpha: 1)
```
```swift
UIColor(R: 100, G: 224, B: 132)
```



## Navigation


### Push

```swift
navigationController?.pushViewController(vc, animated: true)
```
```swift
push(vc)
```

### Present
```swift
presentViewController(vc, animated: true, completion: nil)
```
```swift
present(vc)
```

### Pop

```swift
navigationController?.popViewControllerAnimated(true)
```
```swift
pop()
```

### Dismiss

```swift
dismissViewControllerAnimated(true, completion: nil)
```
```swift
dismiss()
```

## Check textfield content

```swift
if let t = textfield.text where !t.isEmpty {
    print("not empty")
}
```
```swift
if textfield.hasContent {
    print("not empty")
}
```

## Get keyboard height from Keyboard Notification

```swift
if let v = notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue {
     let keyboardHeight = v.CGRectValue().size.height
}
```

```swift
notification.keyboardHeight
```

## UIButton background color

```swift
button.setBackgroundColor(.blueColor(), forState: .Normal)
```
