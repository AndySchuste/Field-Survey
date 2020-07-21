//
//  FieldSurveyDetailViewController.swift
//  Field Survey
//
//  Created by Andy Schuster on 07/20/20.
//  Copyright © 2020 Andrew Schuster. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    @IBOutlet weak var classificationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    let dateFormatter = DateFormatter()

    var observation: Observation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        self.title = "Observation"
        
        if let observation = observation {
            titleLabel.text = observation.title
            dateLabel.text = dateFormatter.string(from: observation.date)
            descriptionLabel.text = observation.description
            classificationIconImageView.image = UIImage(named: observation.classification.rawValue)
        }
    }
}
