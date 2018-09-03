//
//  ViewController.swift
//  SHSelectionSample
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    
    @IBOutlet var categoryButtons: [UIButton]!

    @IBOutlet weak var genderSelection: SHSelectionIcon!
    @IBOutlet weak var categorySelection: SHSelectionIcon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        //Tap to dismiss keyboard
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        view.addGestureRecognizer(tap)
    }
    
    
    //Setup UI and Configure Selection Icon
    func setupUI(){
        
        maleButton.layer.borderWidth = 0.5
        femaleButton.layer.borderWidth = 0.5
        maleButton.layer.borderColor = UIColor.lightGray.cgColor
        femaleButton.layer.borderColor = UIColor.lightGray.cgColor
        
        genderSelection.selectionIconHeight = 30
        genderSelection.selectionIconWidth = 30
        genderSelection.pointerDirection = .vertical
        genderSelection.image = #imageLiteral(resourceName: "Male")
        genderSelection.initialButton(object: maleButton)
        
        categorySelection.selectionIconHeight = 30
        categorySelection.selectionIconWidth = 30
        categorySelection.pointerDirection = .horizontal
        categorySelection.image = #imageLiteral(resourceName: "HorizontalPointer")
        categorySelection.initialButton(object: categoryButtons[0])
        
        categoryButtons.forEach { catButton in
            catButton.layer.borderWidth = 0.5
            catButton.layer.borderColor = UIColor.lightGray.cgColor
        }
 
    }
    
    // function which is triggered when handleTap is called
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func maleButtonAction(_ sender: UIButton) {
        genderSelection.image = #imageLiteral(resourceName: "Male")
        genderSelection.setSelection(object: sender)
    }
    
    @IBAction func femaleButtonAction(_ sender: UIButton) {
        genderSelection.image = #imageLiteral(resourceName: "Female")
        genderSelection.setSelection(object: sender)
    }
    
    @IBAction func categoryAction(_ sender: UIButton) {
        categorySelection.setSelection(object: sender)
    }
}

