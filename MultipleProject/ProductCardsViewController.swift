//
//  ProductCardsViewController.swift
//  MultipleProject
//
//  Created by Devank on 01/05/24.
//




import UIKit

class ProductCardsViewController: UIViewController {

    private let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "porganic"))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "PORGANIC"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()

    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Organic pitaya blended with sprouted chia, bananas and fresh fruit."
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()

    private let containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        view.clipsToBounds = false
        return view
    }()

    private let animationDuration: TimeInterval = 1.0
    private var scaleAnimation: CAKeyframeAnimation!
    private var slideAnimation: CAKeyframeAnimation!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        containerView.addSubview(imageView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(descriptionLabel)
        view.addSubview(containerView)

        containerView.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false

      
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 350),
            containerView.heightAnchor.constraint(equalToConstant: 200),

            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 150),
            imageView.heightAnchor.constraint(equalToConstant: 200),

            titleLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 0),
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 60),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),

            descriptionLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 0),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            descriptionLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10)
        ])

        
        
        


        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tapGestureRecognizer)

        scaleAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        scaleAnimation.values = [2, 1]
        scaleAnimation.keyTimes = [0, 1]
        scaleAnimation.timingFunctions = [CAMediaTimingFunction(name: .easeInEaseOut), CAMediaTimingFunction(name: .easeInEaseOut)]
        scaleAnimation.duration = animationDuration

        slideAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        slideAnimation.values = [-1.5, 0]
        slideAnimation.keyTimes = [0, 1]
        slideAnimation.timingFunctions = [CAMediaTimingFunction(name: .easeInEaseOut), CAMediaTimingFunction(name: .easeInEaseOut)]
        slideAnimation.duration = animationDuration
    }

    @objc private func handleTap() {
        if let animation = imageView.layer.animation(forKey: "transform.scale") {
            imageView.layer.removeAnimation(forKey: "transform.scale")
        }

        if let animation = containerView.layer.animation(forKey: "transform.translation.x") {
            containerView.layer.removeAnimation(forKey: "transform.translation.x")
        }

       imageView.layer.add(scaleAnimation, forKey: "transform.scale")
        containerView.layer.add(slideAnimation, forKey: "transform.translation.x")
    }

}
