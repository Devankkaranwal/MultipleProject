//
//  Product6ViewController.swift
//  MultipleProject
//
//  Created by Devank on 04/05/24.
//

import UIKit
//


//
//class Product6ViewController: UIViewController {
//
//    private let imageView: UIImageView = {
//        let imageView = UIImageView(image: UIImage(named: "porganic"))
//        imageView.contentMode = .scaleAspectFit
//        imageView.clipsToBounds = true
//        return imageView
//    }()
//
//    private let titleLabel: UILabel = {
//        let label = UILabel()
//        label.text = "PORGANIC"
//        label.font = UIFont.boldSystemFont(ofSize: 20)
//        label.textColor = .black
//        return label
//    }()
//
//    private let descriptionLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Organic pitaya blended with sprouted chia, bananas and fresh fruit."
//        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = .black
//        label.numberOfLines = 0
//        return label
//    }()
//
//    private let containerView: UIView = {
//        let view = UIView()
//        view.layer.cornerRadius = 10
//        view.layer.shadowColor = UIColor.black.cgColor
//        view.layer.shadowOpacity = 0.2
//        view.layer.shadowOffset = .zero
//        view.layer.shadowRadius = 10
//        view.clipsToBounds = false
//        return view
//    }()
//
//    private var animator: UIViewPropertyAnimator?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.backgroundColor = .white
//
//        containerView.addSubview(imageView)
//        containerView.addSubview(titleLabel)
//        containerView.addSubview(descriptionLabel)
//        view.addSubview(containerView)
//
//        containerView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            containerView.widthAnchor.constraint(equalToConstant: 350),
//            containerView.heightAnchor.constraint(equalToConstant: 200),
//
//            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
//            imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
//            imageView.widthAnchor.constraint(equalToConstant: 150),
//            imageView.heightAnchor.constraint(equalToConstant: 200),
//
//            titleLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 0),
//            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 60),
//            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
//
//            descriptionLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 0),
//            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
//            descriptionLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10)
//        ])
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        // Hide the text
//        titleLabel.isHidden = true
//        descriptionLabel.isHidden = true
//
//        // Animate the image
//        let scaleAnimation = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut) {
//            self.imageView.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
//            self.titleLabel.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
//            self.descriptionLabel.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
//        }
//
//        // Show the text after 2 seconds
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
//            self.titleLabel.isHidden = false
//            self.descriptionLabel.isHidden = false
//        }
//
//        scaleAnimation.startAnimation()
//        self.animator = scaleAnimation
//    }
//}




class Product6ViewController: UIViewController {

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

    private var animator: UIViewPropertyAnimator?

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
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // Hide the text initially
        titleLabel.alpha = 0.0
        descriptionLabel.alpha = 0.0

        // Animate the image
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseInOut, animations: {
            self.imageView.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        }) { _ in
            // Show the text after a delay
            UIView.animate(withDuration: 0.1, animations: {
                self.titleLabel.alpha = 1.0
                self.descriptionLabel.alpha = 1.0
            })
        }
    }
}
