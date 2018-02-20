//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
        self.screen(onGuestList: true, person: "Mary")
        self.screenUnder21(age: 12, onGuestList: true, person: "Sister")
        self.screenVIP(age: 20, person: "Mary", onGuestList: false, knowsTheOwner: true)
    }
    
    func admit(personName: String) {
        print("\(personName) come party with us")
    }
    
    func deny(personName: String) {
        print("\(personName), sorry!")
    }
    
    func screen(onGuestList: Bool, person: String) {
        if onGuestList {
            admit(personName: person)
        } else {
            deny(personName: person)
        }
    }
    
    func screenUnder21(age: Int, onGuestList: Bool, person: String) {
        if (age > 21 && onGuestList) {
            admit(personName: person)
        } else {
            if (age <= 21) {
                print("\(person) you are too young")
            }
            
            if (!onGuestList) {
                deny(personName: person)
            }
        }
    }
    
    func screenVIP(age: Int, person: String, onGuestList: Bool, knowsTheOwner: Bool) {
        if (age > 21 && onGuestList) {
            admit(personName: person)
        } else {
            if (knowsTheOwner) {
                print(sendToOwner(person: person))
            } else {
                if (!onGuestList) {
                    deny(personName: person)
                } else if (age <= 21) {
                    print("\(person) you are too young")
                }
            }
        }
    }
    
    func sendToOwner(person: String) -> String {
        return "\(person), please go to the owner"
    }
    
    
    func madLibGenerator(adverb: String, adjective: String, pluralNoun: String)-> String {
        return "Whew! I've been \(adverb) learning how to build \(adjective) app with Udacity. I hope they teach me about \(pluralNoun) soon. That would be helpful."
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
