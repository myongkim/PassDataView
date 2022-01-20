//
//  ViewController.swift
//  PassDataView
//
//  Created by Isaac Kim on 1/19/22.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         
    }
    
    @IBAction func didTapButton() {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: secondVCIdentifier) as? SecondViewController else { return }
        vc.modalPresentationStyle = .fullScreen
        vc.newDataDelegate = self
        vc.labelText = "show me the money"
        
        
        present(vc, animated: true, completion: nil)
        
        
    }


}

extension FirstViewController: dataNameDelegate {
    func newData(data: String) {
        label.text = data
        
    }
    
    
}

