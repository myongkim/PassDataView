//
//  SecondViewController.swift
//  PassDataView
//
//  Created by Isaac Kim on 1/19/22.
//

import UIKit

protocol dataNameDelegate {
    func newData(data: String)
}


class SecondViewController: UIViewController {
    
    var newDataDelegate: dataNameDelegate?

   @IBOutlet var textField: UITextField!
    @IBOutlet var anyLabel: UILabel!
    
    var labelText: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        anyLabel.text = labelText
        
    }
    @IBAction func didTapSave() {

        guard let text = textField.text else { return }
        newDataDelegate?.newData(data: text)
        
        dismiss(animated: true, completion: nil)
        
    }
    
}

