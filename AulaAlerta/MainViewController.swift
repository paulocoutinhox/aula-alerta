import UIKit

class MainViewController: UIViewController {
    
    lazy var btCenter: UIButton = {
        let o = UIButton()
        o.setTitle("Show Alert", for: .normal)
        o.setTitleColor(.red, for: .normal)
        o.translatesAutoresizingMaskIntoConstraints = false
        o.addTarget(self, action: #selector(onBtCenterClicked), for: .touchUpInside)
        return o
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white        
        view.addSubview(btCenter)
        
        view.addConstraint(NSLayoutConstraint(
            item: btCenter,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0
        ))
        
        view.addConstraint(NSLayoutConstraint(
            item: btCenter,
            attribute: .centerY,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerY,
            multiplier: 1.0,
            constant: 0
        ))
    }
    
    @objc func onBtCenterClicked() {
        let alert = createAlert()
        present(alert, animated: true)
    }
    
    func createAlert() -> UIAlertController {
        let alert = UIAlertController(title: "Message", message: "Hello World!", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            alert.dismiss(animated: true)
        }))
        
        return alert
    }
    
}

