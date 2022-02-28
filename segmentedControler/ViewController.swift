//
//  ViewController.swift
//  segmentedControler
//
//  Created by isa fontana on 2/24/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    

//Label: Hello Languages
    @IBOutlet weak var languageLabel: UILabel!
    
    @IBOutlet weak var segmentControlOutlet: UISegmentedControl!
    
    
    
//Label: view picker
    
    @IBOutlet weak var viewPickerLabel: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    
    var colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Indigo", "Purple"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        colors[row]

    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    internal func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        view.endEditing(true)
        
        switch row {
            
        case 0:
            viewPickerLabel.text = "Red"
            viewPickerLabel.textColor = .red
        case 1:
            viewPickerLabel.text = "Orange"
            viewPickerLabel.textColor = .orange
        case 2:
            viewPickerLabel.text = "Yellow"
            viewPickerLabel.textColor = .yellow
        case 3:
            viewPickerLabel.text = "Green"
            viewPickerLabel.textColor = .green
        case 4:
            viewPickerLabel.text = "Blue"
            viewPickerLabel.textColor = .blue
        case 5:
            viewPickerLabel.text = "Indigo"
            viewPickerLabel.textColor = .systemIndigo
        case 6:
            viewPickerLabel.text = "Purple"
            viewPickerLabel.textColor = .purple
            
        default: viewPickerLabel.text = "None Selected"
            
        }
    
    }

  
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //PickerView:
        picker.dataSource = self
        picker.delegate = self
        
        
       let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.gray]
        segmentControlOutlet.setTitleTextAttributes(titleTextAttributes, for: .normal)
    
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

