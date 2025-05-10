//
//  ViewController.swift
//  IOS101_PreWork
//
//  Created by David Medina on 5/10/25.
//

import UIKit

class ViewController: UIViewController, UIColorPickerViewControllerDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var schoolNameLabel: UILabel!
    @IBOutlet weak var occupationTitleLabel: UILabel!
    
    @IBOutlet weak var toggleTextColorButton: UIButton!
    @IBOutlet weak var toggleBackgroundButton: UIButton!
    @IBOutlet weak var toggleContainerColorButton: UIButton!
    
    var containerView: UIView = UIView()
    
    enum selectedAreaToChange {
        case background
        case text
        case container
        case none
    }
    
    var selectedAreaToChangeValue: selectedAreaToChange = .none
    
    var colorPicker: UIColorPickerViewController = UIColorPickerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toggleBackgroundButton.titleLabel?.adjustsFontSizeToFitWidth = true
        toggleBackgroundButton.titleLabel?.textAlignment = .center
        
        toggleTextColorButton.titleLabel?.adjustsFontSizeToFitWidth = true
        toggleTextColorButton.titleLabel?.textAlignment = .center
        
        toggleContainerColorButton.titleLabel?.adjustsFontSizeToFitWidth = true
        toggleContainerColorButton.titleLabel?.textAlignment = .center
                
//        keeping the container view as a storyboard component didn't work...
//        containerView.layer.cornerRadius = 15
//        containerView.layer.borderColor = UIColor.black.cgColor
//        containerView.layer.borderWidth = 1.5
//        containerView.layer.masksToBounds = true
        
        colorPicker.delegate = self
        colorPicker.supportsAlpha = true
        
        containerView.layer.cornerRadius = 12
        containerView.layer.borderColor = UIColor.black.cgColor
        containerView.layer.borderWidth = 1.5
        containerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerView)
        view.sendSubviewToBack(containerView)

        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: -25),
            containerView.leadingAnchor.constraint(equalTo: schoolNameLabel.leadingAnchor, constant: -25),
            containerView.trailingAnchor.constraint(equalTo: schoolNameLabel.trailingAnchor, constant: 25),
            containerView.bottomAnchor.constraint(equalTo: occupationTitleLabel.bottomAnchor, constant: 25)
        ])
    }

    @IBAction func changeTextColor(_ sender: UIButton) {
        selectedAreaToChangeValue = .text
        present(colorPicker, animated: true, completion: nil)
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        selectedAreaToChangeValue = .background
        present(colorPicker, animated: true, completion: nil)
    }
    
    @IBAction func changeContainerColor(_ sender: UIButton) {
        selectedAreaToChangeValue = .container
        present(colorPicker, animated: true, completion: nil)
    }
    
    func colorPickerViewController(_ viewController: UIColorPickerViewController, didSelect color: UIColor, continuously: Bool) {
        
        switch selectedAreaToChangeValue {
        case .background:
            view.backgroundColor = color
        case .text:
            nameLabel.textColor = color
            schoolNameLabel.textColor = color
            occupationTitleLabel.textColor = color
        case .container:
            containerView.backgroundColor = color
        case .none:
            break
        }
    }
}

