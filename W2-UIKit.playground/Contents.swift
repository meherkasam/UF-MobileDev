import PlaygroundSupport
import UIKit

class AutoLayout_W2ViewController : UIViewController {
    // UI Elements
    let titleLabel = UILabel()
    let nameTextField = UITextField()
    let ssnTextField = UITextField()
    let incomeTextField = UITextField()
    let submitButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set up UI elements
        titleLabel.text = "W-2 Form"

        titleLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        titleLabel.textAlignment = .center

        nameTextField.placeholder = "Name"
        nameTextField.borderStyle = .roundedRect

        ssnTextField.placeholder = "SSN"
        ssnTextField.borderStyle = .roundedRect

        incomeTextField.placeholder = "Income"
        incomeTextField.borderStyle = .roundedRect

        submitButton.setTitle("Submit", for: .normal)
        submitButton.addTarget(self, action: #selector(submitForm), for: .touchUpInside)

        // Add UI elements to view
        view.addSubview(titleLabel)
        view.addSubview(nameTextField)
        view.addSubview(ssnTextField)
        view.addSubview(incomeTextField)
        view.addSubview(submitButton)

        // Set constraints
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true

        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true

        ssnTextField.translatesAutoresizingMaskIntoConstraints = false
        ssnTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 16).isActive = true
        ssnTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        ssnTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true

        incomeTextField.translatesAutoresizingMaskIntoConstraints = false
        incomeTextField.topAnchor.constraint(equalTo: ssnTextField.bottomAnchor, constant: 16).isActive = true
        incomeTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        incomeTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true

        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.topAnchor.constraint(equalTo: incomeTextField.bottomAnchor, constant: 24).isActive = true
        submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        submitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
    }

    @objc func submitForm() {
        // Form submit code
    }
}

class RectBased_W2ViewController: UIViewController {
    // UI Elements
    let titleLabel = UILabel()
    let nameTextField = UITextField()
    let ssnTextField = UITextField()
    let incomeTextField = UITextField()
    let submitButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up UI elements
        titleLabel.text = "W-2 Form"
        titleLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        titleLabel.sizeToFit()
        
        nameTextField.placeholder = "Name"
        nameTextField.borderStyle = .roundedRect
        
        ssnTextField.placeholder = "SSN"
        ssnTextField.borderStyle = .roundedRect
        
        incomeTextField.placeholder = "Income"
        incomeTextField.borderStyle = .roundedRect
        
        submitButton.setTitle("Submit", for: .normal)
        submitButton.addTarget(self, action: #selector(submitForm), for: .touchUpInside)
        
        // Set up view hierarchy
        view.addSubview(titleLabel)
        view.addSubview(nameTextField)
        view.addSubview(ssnTextField)
        view.addSubview(incomeTextField)
        view.addSubview(submitButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // Set up frame-based layout
        
        // Title label
        titleLabel.frame.origin.x = (view.bounds.width - titleLabel.bounds.width) / 2.0
        titleLabel.frame.origin.y = 40.0
        
        // Name text field
        nameTextField.frame = CGRect(x: 16.0,
                                     y: titleLabel.frame.maxY + 16.0,
                                     width: view.bounds.width - 32.0,
                                     height: 44.0)
        
        // SSN text field
        ssnTextField.frame = CGRect(x: 16.0,
                                    y: nameTextField.frame.maxY + 16.0,
                                    width: view.bounds.width - 32.0,
                                    height: 44.0)
        
        // Income text field
        incomeTextField.frame = CGRect(x: 16.0,
                                       y: ssnTextField.frame.maxY + 16.0,
                                       width: view.bounds.width - 32.0,
                                       height: 44.0)
        
        // Submit button
        submitButton.frame = CGRect(x: (view.bounds.width - 100.0) / 2.0,
                                    y: incomeTextField.frame.maxY + 16.0,
                                    width: 100.0,
                                    height: 44.0)
    }
    
    @objc func submitForm() {
        // Form submit code
    }
}


var viewController: UIViewController
viewController = RectBased_W2ViewController()
// viewController = AutoLayout_W2ViewController()
viewController.view.frame = CGRect(x: 0, y: 0, width: 320, height: 568)
PlaygroundPage.current.setLiveView(viewController)
