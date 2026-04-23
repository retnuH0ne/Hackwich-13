//
//  ViewController.swift
//  Hackwich 13
//
//  Created by Hunter Trujillo on 4/21/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    var currentValue: Float = 0
    var targetValue: Int = 0
    @IBOutlet weak var targetLabel: UILabel!
    

    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        currentValue = slider.value
        
        startAgain()
        
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")!
        slider.setThumbImage(thumbImageNormal, for: .normal)

    }

    
    @IBAction func myGuessButtonPressed(_ sender: Any)
    {
        let message = "Your guess is: \(currentValue) \nThe target value for this round was: \(targetValue)"
        
        let alert = UIAlertController(title: "Guess the Number Game", message: message, preferredStyle: .alert)
        
                
        let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startAgain()
        
        
    }
    
    
    @IBAction func sliderHasMoved(_ sender: Any)
    {
        
        print("The value of the slider is:  \(slider.value)")
        currentValue = slider.value
        
    }
        
    func startAgain()
    {
        targetValue = Int.random(in: 1...100)
        currentValue = slider.value
        updateTargetLabel()
    }
    
    func updateTargetLabel()
    {
        targetLabel.text = "\(targetValue)"
    }
}

