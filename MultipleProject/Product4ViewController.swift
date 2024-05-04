//
//  Product4ViewController.swift
//  MultipleProject
//
//  Created by Devank on 27/04/24.
//

import UIKit

class Product4ViewController: UIViewController {
    
    enum LabelType {
           case title
           case description
       }
    
    let imageView = UIImageView()
      let titleLabel = UILabel()
      let descriptionLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Set up the imageView
               imageView.image = UIImage(named: "porganic")
               imageView.contentMode = .scaleAspectFit
               imageView.translatesAutoresizingMaskIntoConstraints = false
               view.addSubview(imageView)

               // Set up the titleLabel
               titleLabel.text = "porganic"
               titleLabel.font = UIFont.systemFont(ofSize: calculateFontSize(for: .title))
               titleLabel.textAlignment = .center
               titleLabel.translatesAutoresizingMaskIntoConstraints = false
               view.addSubview(titleLabel)

               // Set up the descriptionLabel
               descriptionLabel.text = "Organic pitaya blended with sprouted chia, bananas and fresh fruit."
               descriptionLabel.font = UIFont.systemFont(ofSize: calculateFontSize(for: .description))
               descriptionLabel.numberOfLines = 0
               descriptionLabel.textAlignment = .center
               descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
               view.addSubview(descriptionLabel)

               // Set up the constraints
               NSLayoutConstraint.activate([
                   imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                   imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                   imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
                   imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1),

                   titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                   titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                   titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),

                   descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                   descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                   descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
                   descriptionLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
               ])

               // Set up the pan gesture recognizer for the image view
               let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture(_:)))
               imageView.addGestureRecognizer(panGestureRecognizer)
               imageView.isUserInteractionEnabled = true
    }
    

    func calculateFontSize(for labelType: LabelType) -> CGFloat {
            let screenWidth = UIScreen.main.bounds.width
            let fontSize: CGFloat = labelType == .title ? (screenWidth > 400 ? 36 : 24) : (screenWidth > 400 ? 20 : 16)
            return fontSize
        }

        @objc func handlePanGesture(_ sender: UIPanGestureRecognizer) {
            let translation = sender.translation(in: imageView)
            let rotationAngle = translation.y / 200
            let rotationTransform = CGAffineTransform(rotationAngle: rotationAngle)
            let newTransform = imageView.transform.concatenating(rotationTransform)
            imageView.transform = newTransform
            sender.setTranslation(.zero, in: imageView)
        }

}
