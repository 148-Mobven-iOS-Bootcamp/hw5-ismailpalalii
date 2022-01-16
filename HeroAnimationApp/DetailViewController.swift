//
//  DetailViewController.swift
//  HeroAnimationApp
//
//  Created by ismail palali on 16.01.2022.
//

import UIKit
import Hero

class DetailViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var cityNames = ""
    var cityDescription = ""
    var images = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.hero.isEnabled = true
        view.hero.id = "test"
        labelText.text = cityNames
        textView.text = cityDescription
        imageView.image = images
        
    }
        
    }
    

