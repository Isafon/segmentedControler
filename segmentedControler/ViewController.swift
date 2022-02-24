//
//  ViewController.swift
//  segmentedControler
//
//  Created by isa fontana on 2/24/22.
//

import UIKit

class ViewController: UIViewController {
    
//Label: Hello
    @IBOutlet weak var languageLabel: UILabel!
    
    @IBOutlet weak var segmentControlOutlet: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        
        switch segmentControlOutlet.selectedSegmentIndex
        {
        case 0:
                languageLabel.text = "Hello"
        case 1:
                languageLabel.text = "你好"
            
        case 2: languageLabel.text = "안녕하세요"
            
        case 3: languageLabel.text = "Hola"
            
            default:
                break
            }
        
        
    }
    

}

